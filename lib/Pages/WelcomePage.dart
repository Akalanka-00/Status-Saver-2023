import 'package:flutter/material.dart';
import 'package:status_saver/Pages/PermissionRequestScreen.dart';
import 'package:status_saver/Pages/StatusScreen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Status Saver"),
          leading: Icon(Icons.menu),
          backgroundColor: Colors.teal,
          actions: [
            Icon(Icons.settings),
            Padding(padding: EdgeInsets.only(right: 10)),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/banner.png")),
            Padding(padding: EdgeInsets.only(top: 100)),
            Container(
              height: 144,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 20,
                  ),

// Whatsapp Statuses
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const PermissionRequestScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage("assets/images/logo.png"),
                              width: 70,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 20)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  // Whatsapp Business statuses
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage("assets/images/logo.png"),
                              width: 70,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 20)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  // Saved Statuses
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.teal,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage("assets/images/logo.png"),
                              width: 70,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Pending",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 20)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
