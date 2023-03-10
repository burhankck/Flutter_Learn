import 'dart:io';

import 'package:flutter_app/Level_2/custom_exception.dart';

abstract class IFileDowland {
  bool? dowlandItem(FileItem? fileItem);

  void toShare(String path) {
    
  }
}

class FileDowland extends IFileDowland with ShareMixin{
  @override
  bool? dowlandItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDowlandException();

    print('aa');

    return true;
  }
}

class SMSDowland extends IFileDowland with ShareMixin{
  @override
  bool? dowlandItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDowlandException();

    print('aa');

    return true;
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}




mixin ShareMixin on IFileDowland { 

}
