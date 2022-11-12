import 'package:flutter/material.dart';

class SlideSegment extends StatefulWidget {
  const SlideSegment({super.key});

  @override
  State<SlideSegment> createState() => _SlideSegmentState();
}

class _SlideSegmentState extends State<SlideSegment> {
  int? groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Container(
          decoration: BoxDecoration(
              color: const Color(0xff1C4870),
              borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildSegment(
                  text: "اعلام خسارت",
                  backGroundColor:
                      groupValue == 0 ? Colors.white : const Color(0xff1C4870),
                  textColor:
                      groupValue == 0 ? const Color(0xff1C4870) : Colors.white,
                  onTap: () {
                    setState(() {
                      groupValue = 0;
                    });
                  }),
              buildSegment(
                  text: "بازدید بدنه",
                  backGroundColor:
                      groupValue == 1 ? Colors.white : const Color(0xff1C4870),
                  textColor:
                      groupValue == 1 ? const Color(0xff1C4870) : Colors.white,
                  onTap: () {
                    setState(() {
                      groupValue = 1;
                    });
                  }),
              buildSegment(
                  text: "صدور بیمه بدنه",
                  backGroundColor:
                      groupValue == 2 ? Colors.white : const Color(0xff1C4870),
                  textColor:
                      groupValue == 2 ? const Color(0xff1C4870) : Colors.white,
                  onTap: () {
                    setState(() {
                      groupValue = 2;
                    });
                  }),
            ],
          )),
    );
  }

  Widget buildSegment(
      {required String text,
      required Color backGroundColor,
      required Color textColor,
      required Function() onTap}) {
    return InkWell(
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 88,
          height: 33,
          decoration: BoxDecoration(
              color: backGroundColor, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 12, color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
