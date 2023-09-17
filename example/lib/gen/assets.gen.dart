/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsBoundariesGen {
  const $AssetsBoundariesGen();

  /// File path: assets/boundaries/boundaries.cpg
  String get boundariesCpg => 'assets/boundaries/boundaries.cpg';

  /// File path: assets/boundaries/boundaries.dbf
  String get boundariesDbf => 'assets/boundaries/boundaries.dbf';

  /// File path: assets/boundaries/boundaries.prj
  String get boundariesPrj => 'assets/boundaries/boundaries.prj';

  /// File path: assets/boundaries/boundaries.shp
  String get boundariesShp => 'assets/boundaries/boundaries.shp';

  /// File path: assets/boundaries/boundaries.shx
  String get boundariesShx => 'assets/boundaries/boundaries.shx';

  /// List of all assets
  List<String> get values => [
        boundariesCpg,
        boundariesDbf,
        boundariesPrj,
        boundariesShp,
        boundariesShx
      ];
}

class Assets {
  Assets._();

  static const $AssetsBoundariesGen boundaries = $AssetsBoundariesGen();
  static const String missingDbf = 'assets/missing_dbf.zip';
  static const String multi = 'assets/multi.zip';
  static const String single = 'assets/single.zip';
  static const String withSubfolders = 'assets/with_subfolders.zip';

  /// List of all assets
  List<String> get values => [missingDbf, multi, single, withSubfolders];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
