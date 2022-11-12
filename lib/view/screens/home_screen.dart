import 'package:arisa/view/widgets/arisa_app_bar.dart';
import 'package:arisa/view/widgets/arisa_body.dart';
import 'package:flutter/material.dart';

import '../widgets/arisa_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: false,
        appBar: const ArisaAppBar(),
        body: ArisaBody(),
        bottomNavigationBar: const ArisaBottomNavigation(),
      ),
    );
  }
}
