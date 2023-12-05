import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:saf/saf.dart';
import 'package:status_saver/Constants/AppConstants.dart';
import 'package:status_saver/Pages/PermissionRequestScreen.dart';
import 'package:status_saver/Utilities/FetchStatus.dart';
import 'package:status_saver/components/CustomAppBar.dart';
import 'package:status_saver/model/Status.dart';

const List<String> types = <String>['All', 'Images', 'Videos'];

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  String dropdownValue = types.first;
  late List<Status> statusList;
  @override
  void initState() {
    super.initState();
    FetchStatus fetchStatus = new FetchStatus();
     statusList = fetchStatus.getStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            height: 80,
            padding: EdgeInsets.only(left: 20),
            color: Colors.white70,
            child: Row(
              children: [
                Text("Select the type"),
                SizedBox(
                  width: 20,
                ),
                DropdownMenu(
                    initialSelection: types.first,
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        types.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList())
              ],
            ),
          ),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
              ),
              children: List.generate(
                  statusList.length,
                  (index) => Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
