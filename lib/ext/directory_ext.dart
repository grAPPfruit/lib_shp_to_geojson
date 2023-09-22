import 'dart:io';

extension FilenamesWithEnding on Directory {
  List<File> getFilesWithEnding(String ending) => listSync()
      .where((entity) => entity is File && entity.path.endsWith(ending))
      .cast<File>()
      .toList();
}
