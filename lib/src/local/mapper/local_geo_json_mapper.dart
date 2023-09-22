import 'package:lib_shp_to_geojson/src/domain/model.dart';
import 'package:lib_shp_to_geojson/src/domain/model/lat_long.dart';
import 'package:lib_shp_to_geojson/src/domain/model/polygon.dart';
import 'package:lib_shp_to_geojson/src/local/model.dart';
import 'package:proj4dart/proj4dart.dart';

class LocalGeoJsonMapper {
  List<Field> map(LocalGeoJson from) =>
      from.features
          ?.map(_mapField)
          .whereType<Field>()
          .toList(growable: false) ??
      [];

  Field? _mapField(LocalGeoFeature feature) {
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

    final border = _mapPolygon(coords.first);
    if (border == null) {
      return null;
    }

    final holes = coords
        .skip(1)
        .map(_mapPolygon)
        .whereType<Polygon>()
        .toList(growable: false);

    return Field(
      name: null, // TODO: get name from properties per state
      border: border,
      holes: holes,
    );
  }

  Polygon? _mapPolygon(List<List<double>> coords) {
    final isValid = coords.every((e) => e.length == 2);
    if (!isValid) {
      return null;
    }
    final points = coords.map(_mapLatLong).toList(growable: false);
    return Polygon(points: points);
  }

  LatLong _mapLatLong(List<double> coords) {
    final lat = coords[0];
    final long = coords[1];

    final isValidLat = lat >= -90 && lat <= 90;
    final isValidLong = long >= -180 && long <= 180;
    if (isValidLat && isValidLong) {
      return LatLong(long: long, lat: lat);
    }

    final projPoint = _transformToLatLng(lat, long);
    return LatLong(lat: projPoint.y, long: projPoint.x);
  }

  Point _transformToLatLng(double lat, double long) {
    final point = Point(x: lat, y: long);
    // TODO: get from prj file
    final projSrc = Projection.get('EPSG25832') ??
        Projection.add(
          'EPSG25832',
          '''
          PROJCS["ETRS89 / UTM zone 32N",GEOGCS["ETRS89",DATUM["D_ETRS_1989",SPHEROID["GRS_1980",6378137,298.257222101]],PRIMEM["Greenwich",0],UNIT["Degree",0.017453292519943295]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",0],PARAMETER["central_meridian",9],PARAMETER["scale_factor",0.9996],PARAMETER["false_easting",500000],PARAMETER["false_northing",0],UNIT["Meter",1],AUTHORITY["EPSG","25832"]]
          '''
              .replaceAll('\'', ''),
        );
    return projSrc.transform(Projection.WGS84, point);
  }
}
