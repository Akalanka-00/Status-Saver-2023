import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Status Saver"),
      leading: GestureDetector(child: Icon(Icons.arrow_back_ios), onTap: () => Navigator.pop(context),),
      backgroundColor: Colors.teal,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
  

}
