// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:proj4dart/proj4dart.dart';
//
// import '../local/model/geo_coordinate.dart';
//
// class GeoCoordinateConverter
//     implements JsonConverter<GeoCoordinate, List<double>> {
//   const GeoCoordinateConverter();
//
//   @override
//   GeoCoordinate fromJson(List<double> json) {
//     if (json.length != 2) {
//       throw ArgumentError('json must have 2 elements');
//     }
//
//     final lat = json[0];
//     final long = json[1];
//
//     final isValidLat = lat >= -90 && lat <= 90;
//     final isValidLong = long >= -180 && long <= 180;
//     if (isValidLat && isValidLong) {
//       return GeoCoordinate(long: long, lat: lat);
//     }
//
//     final projPoint = _transformToLatLng(lat, long);
//     return GeoCoordinate(lat: projPoint.y, long: projPoint.x);
//   }
//
//   Point _transformToLatLng(double lat, double long) {
//     final point = Point(x: lat, y: long);
//     final projSrc = Projection.get('EPSG25832') ??
//         Projection.add(
//           'EPSG25832',
//           'PROJCS["ETRS89 / UTM zone 32N",GEOGCS["ETRS89",DATUM["D_ETRS_1989",SPHEROID["GRS_1980",6378137,298.257222101]],PRIMEM["Greenwich",0],UNIT["Degree",0.017453292519943295]],PROJECTION["Transverse_Mercator"],PARAMETER["latitude_of_origin",0],PARAMETER["central_meridian",9],PARAMETER["scale_factor",0.9996],PARAMETER["false_easting",500000],PARAMETER["false_northing",0],UNIT["Meter",1],AUTHORITY["EPSG","25832"]]',
//         );
//     final projDst = Projection.WGS84;
//     return projSrc.transform(projDst, point);
//   }
//
//   @override
//   List<double> toJson(GeoCoordinate object) =>
//       throw UnimplementedError();
// }
