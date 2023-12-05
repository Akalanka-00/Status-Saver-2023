import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:status_saver/Constants/AppConstants.dart';
import 'package:status_saver/Pages/StatusScreen.dart';
import 'package:status_saver/Utilities/FetchStatus.dart';

import 'package:status_saver/components/CustomAppBar.dart';
import 'package:saf/saf.dart';
import 'package:status_saver/model/Status.dart';

class PermissionRequestScreen extends StatefulWidget {
  const PermissionRequestScreen({super.key});

  @override
  State<PermissionRequestScreen> createState() =>
      _PermissionRequestScreenState();
}

class _PermissionRequestScreenState extends State<PermissionRequestScreen> {
  late Saf saf;
  var _paths = [];
  @override
  void initState() {
    Permission.storage.request();
    saf = Saf(AppConstants.wa_dir);
    super.initState();

    FetchStatus fetchStatus = new FetchStatus();
    List<Status> statusList = fetchStatus.getStatus();
    if (statusList.length > 0) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const StatusPage()));
    }
  }

  loadImage(paths, {String k = ""}) {
    var tempPaths = [];
    for (String path in paths) {
      if (path.endsWith(".jpg")) {
        tempPaths.add(path);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const StatusPage()));
      }
    }
    if (k.isNotEmpty) tempPaths.add(k);
    _paths = tempPaths;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Permission Required!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(image: AssetImage("assets/images/android.png")),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                saf.getDirectoryPermission(isDynamic: false);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const StatusPage()));
              },
              child: Text("Grant Permission"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
            )
          ],
        ),
      ),
    );
  }
}
