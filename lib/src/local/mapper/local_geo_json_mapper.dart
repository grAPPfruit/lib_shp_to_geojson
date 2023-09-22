import 'package:lib_shp_to_geojson/src/domain/model.dart';
import 'package:lib_shp_to_geojson/src/domain/model/lat_long.dart';
import 'package:lib_shp_to_geojson/src/domain/model/polygon.dart';
import 'package:lib_shp_to_geojson/src/local/model.dart';

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
    final points = coords
        .map((e) => LatLong(lat: e[1], long: e[0]))
        .toList(growable: false);
    return Polygon(points: points);
  }
}
