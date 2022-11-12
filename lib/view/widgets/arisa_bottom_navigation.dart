import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';

class ArisaBottomNavigation extends StatefulWidget {
  const ArisaBottomNavigation({super.key});

  @override
  State<ArisaBottomNavigation> createState() => _ArisaBottomNavigationState();
}

class _ArisaBottomNavigationState extends State<ArisaBottomNavigation> {
  int groupvalue = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomAppBar(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 60,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        groupvalue == 0
                            ? const SizedBox(
                                width: 40,
                                height: 30,
                              )
                            : btmIcons(
                                text: 'ارسال نواقص',
                                asset: 'assets/send_icon.png',
                                onTap: () {
                                  groupvalue = 0;
                                  setState(() {});
                                }),
                        groupvalue == 1
                            ? const SizedBox(
                                width: 40,
                                height: 30,
                              )
                            : btmIcons(
                                text: 'خانه',
                                asset: 'assets/home_icon.png',
                                onTap: () {
                                  groupvalue = 1;
                                  setState(() {});
                                }),
                        groupvalue == 2
                            ? const SizedBox(
                                width: 40,
                                height: 30,
                              )
                            : btmIcons(
                                text: 'پرونده های من',
                                asset: 'assets/file_state.png',
                                onTap: () {
                                  groupvalue = 2;
                                  setState(() {});
                                }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: groupvalue == 1
              ? 40
              : groupvalue == 0
                  ? 40
                  : null,
          right: groupvalue == 1
              ? 40
              : groupvalue == 2
                  ? 40
                  : null,
          bottom: 20,
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 26,
                child: ClipPolygon(
                  sides: 6,
                  borderRadius: 5.0, // Defaults to 0.0 degrees

                  boxShadows: [
                    PolygonBoxShadow(color: Colors.white, elevation: 1)
                  ],
                  child: Image.asset(
                    groupvalue == 0
                        ? 'assets/send_icon.png'
                        : groupvalue == 1
                            ? 'assets/home_icon.png'
                            : 'assets/file_state.png',
                    color: const Color(0xff1C4870),
                  ),
                ),
              ),
              Text(
                groupvalue == 0
                    ? 'ارسال نواقص'
                    : groupvalue == 1
                        ? 'خانه'
                        : 'پرونده های من',
                style: const TextStyle(
                    fontSize: 10,
                    color: Color(0xff1C4870),
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget btmIcons(
      {required String text,
      required String asset,
      required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            asset,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 10,
                color: Color(0xff909090),
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
