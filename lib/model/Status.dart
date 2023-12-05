import 'dart:ffi';
import 'dart:io';

class Status {
  late String _name;
  late File _file;
  late String _path;
  late bool _isVideo;

  // Getter method for the 'name' property
  String get name {
    return _name;
  }

  // Setter method for the 'name' property
  set name(String newName) {
    _name = newName;
  }

  // Getter method for the 'file' property
  File get file {
    return _file;
  }

  // Setter method for the 'file' property
  set file(File newFile) {
    _file = newFile;
  }

  // Getter method for the 'path' property
  String get path {
    return _path;
  }

  // Setter method for the 'path' property
  set path(String newPath) {
    _path = newPath;
  }

  // Getter method for the 'type' property
  bool get isVideo {
    return _isVideo;
  }

  // Setter method for the 'type' property
  set isVideo(bool isVideo) {
    _isVideo = isVideo;
  }

  Status(String name, File file, String path) {
    this._name = name;
    this._file = file;
    this._path = path;
    this._isVideo = CheckMediaType(name);
  }

  bool CheckMediaType(String name) {
    if (name.endsWith(".mp4")) {
      return true;
    }
    return false;
  }
}
