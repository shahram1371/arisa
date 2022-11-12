import 'package:flutter/material.dart';

class EnterToFile extends StatelessWidget {
  const EnterToFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        children: [
          doneIcon(),
          const SizedBox(
            width: 45,
          ),
          enterCard()
        ],
      ),
    );
  }

  Widget doneIcon() {
    return Column(
      children: [
        Stack(alignment: Alignment.center, children: [
          Image.asset(
            'assets/done_icon.png',
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Icon(
              Icons.done,
              color: Colors.white,
            ),
          )
        ]),
        const SizedBox(
          height: 3,
        ),
        const Text(
          'انجام شد',
          style: TextStyle(fontSize: 12, color: Color(0xff1CAE81)),
        )
      ],
    );
  }

  Widget enterCard() {
    return Container(
      height: 35,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xff1C4870))),
      child: const Center(
        child: Text('ورود به صفحه پرونده',
            style: TextStyle(
                color: Color(0xff1C4870),
                fontSize: 12,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
