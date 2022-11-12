import 'package:arisa/view/widgets/id_text_field.dart';
import 'package:arisa/view/widgets/slide_segment.dart';
import 'package:arisa/view/widgets/specification_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_model/aris_view_model.dart';

class ArisaBody extends StatelessWidget {
  ArisaBody({super.key});
  final controller = Get.put<ArisViewModel>(ArisViewModel());
  @override
  Widget build(BuildContext context) {
    return Obx((() {
      if (controller.isLoaing.value) {
        return const Center(child: CircularProgressIndicator());
      } else {
        return Container(
          color: const Color(0xfff5f5f5),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(height: 24),
                SlideSegment(),
                SizedBox(height: 16),
                IdTextField(),
                SizedBox(height: 16),
                SpecificationCard(),
                SizedBox(height: 16),
              ],
            ),
          ),
        );
      }
    }));
  }
}
