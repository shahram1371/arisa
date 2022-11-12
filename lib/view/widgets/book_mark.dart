import 'package:flutter/material.dart';

class BookMark extends StatelessWidget {
  const BookMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/bookmark.png',
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Text(
            'خودم',
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        )
      ],
    );
  }
}
