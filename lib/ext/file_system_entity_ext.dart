import 'dart:io';

extension GetNames on FileSystemEntity {
  String get name => nameWithExt.substring(0, nameWithExt.lastIndexOf('.'));

  String get nameWithExt => uri.pathSegments.last;
}
