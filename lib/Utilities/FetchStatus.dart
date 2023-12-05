import 'dart:io';

import 'package:status_saver/model/Status.dart';
import 'package:status_saver/Constants/AppConstants.dart';

class FetchStatus {
  static late List<Status> statusList = [];
  static bool isDirAvailable = false;

  List<Status> getStatus() {
    final dir = Directory(AppConstants.wa_dir);
    if (dir.existsSync()) {
      final items = dir.listSync().whereType<File>().toList();
      items.forEach((item) {
        Status status = new Status(item.uri.pathSegments.last, item, item.path);
        statusList.add(status);
      });
      isDirAvailable = items.length > 0;
      print(items.toString());
    } else {}
    return statusList;
  }
}
