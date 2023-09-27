import 'package:lib_shp_to_geojson/src/domain/model.dart';
import 'package:lib_shp_to_geojson/src/domain/model/lat_long.dart';
import 'package:lib_shp_to_geojson/src/domain/model/polygon.dart';
import 'package:lib_shp_to_geojson/src/local/mapper/local_property_field_name_mapper.dart';
import 'package:lib_shp_to_geojson/src/local/model.dart';
import 'package:proj4dart/proj4dart.dart';

class LocalGeoJsonMapper {
  final LocalPropertyFieldNameMapper _fieldNameMapper;

  LocalGeoJsonMapper(this._fieldNameMapper);

  List<Field> map(LocalGeoJson from, String esriProjection) =>
      from.features
          ?.map((e) => _mapField(e, esriProjection))
          .whereType<Field>()
          .toList(growable: false) ??
      [];

  Field? _mapField(LocalGeoFeature feature, String esriProjection) {
    if (feature.type != 'Feature') {
      return null;
    }
    if (feature.geometry?.type != 'Polygon') {
      return null;
    }
    final coords = feature.geometry?.coordinates;
    if (coords == null || coords.isEmpty) {
      return null;
    }

    final border = _mapPolygon(coords.first, esriProjection);
    if (border == null) {
      return null;
    }

    final holes = coords
        .skip(1)
        .map((e) => _mapPolygon(e, esriProjection))
        .whereType<Polygon>()
        .toList(growable: false);

    return Field(
      name: _fieldNameMapper.map(feature.properties),
      border: border,
      holes: holes,
    );
  }

  Polygon? _mapPolygon(List<List<double>> coords, String esriProjection) {
    final isValid = coords.every((e) => e.length == 2);
    if (!isValid) {
      return null;
    }
    final points = coords
        .map((e) => _mapLatLong(e, esriProjection))
        .toList(growable: false);
    return Polygon(points: points);
  }

  LatLong _mapLatLong(List<double> coords, String esriProjection) {
    final lat = coords[0];
    final long = coords[1];

    final isValidLat = lat >= -90 && lat <= 90;
    final isValidLong = long >= -180 && long <= 180;
    if (isValidLat && isValidLong) {
      return LatLong(long: long, lat: lat);
    }

    final projPoint = _transformToLatLng(lat, long, esriProjection);
    return LatLong(lat: projPoint.y, long: projPoint.x);
  }

  Point _transformToLatLng(double lat, double long, String esriProjection) {
    final point = Point(x: lat, y: long);
    final projSrc = Projection.get(esriProjection) ??
        Projection.add(esriProjection, esriProjection.replaceAll('\'', ''));
    return projSrc.transform(Projection.WGS84, point);
  }
}
