import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class AssetUtils {
  AssetUtils._();

  /// copies a file from the assets folder to the device's temporary directory
  /// and returns the file
  static Future<File> getFileFromAssets(String assetPath) async {
    final tempPath = (await getTemporaryDirectory()).path;
    final fileName = assetPath.replaceFirst('assets/', '');

    final file = File('$tempPath/$fileName');

    final byteData = await rootBundle.load(assetPath);
    await file.create(recursive: true);
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }
}
