import 'package:flutter/material.dart';

class ArisaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ArisaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff1C4870),
      title: const Center(
          child: Padding(
        padding: EdgeInsets.only(top: 30.0, left: 30),
        child: Text(
          'پرونده های من',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      )),
      actions: const [
        Padding(
          padding: EdgeInsets.only(top: 30.0, right: 30),
          child: Icon(Icons.menu),
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 70);
}
