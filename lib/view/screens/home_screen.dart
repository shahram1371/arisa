import 'package:arisa/view/widgets/arisa_app_bar.dart';
import 'package:arisa/view/widgets/arisa_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: ArisaAppBar(),
        body: ArisaBody(),
      ),
    );
  }
}
