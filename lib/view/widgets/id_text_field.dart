import 'package:flutter/material.dart';

class IdTextField extends StatelessWidget {
  const IdTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            prefixIcon: Image.asset(
              'assets/search_icon.png',
            ),
            hintText: "شناسه پرونده را وارد نمایید",
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
