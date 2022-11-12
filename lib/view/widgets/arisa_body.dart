import 'package:arisa/view/widgets/slide_segment.dart';
import 'package:flutter/material.dart';

class ArisaBody extends StatelessWidget {
  const ArisaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 24),
        SlideSegment(),
      ],
    );
  }
}
