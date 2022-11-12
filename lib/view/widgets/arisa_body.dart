import 'package:arisa/view/widgets/id_text_field.dart';
import 'package:arisa/view/widgets/slide_segment.dart';
import 'package:flutter/material.dart';

class ArisaBody extends StatelessWidget {
  const ArisaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff5f5f5),
      child: ListView(
        children: const [
          SizedBox(height: 24),
          SlideSegment(),
          SizedBox(height: 16),
          IdTextField(),
        ],
      ),
    );
  }
}
