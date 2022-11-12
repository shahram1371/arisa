import 'package:arisa/view/widgets/book_mark.dart';
import 'package:flutter/material.dart';

class SpecificationCard extends StatelessWidget {
  const SpecificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 47.0),
                child: Column(
                  children: [
                    elementRow(
                        context: context,
                        firstext: 'شناسه پرونده',
                        secondtext: '0iajz4o474'),
                    elementRow(
                        context: context,
                        firstext: 'نام مشتری',
                        secondtext: 'محمدعلی مراد بیگ زاده'),
                    elementRow(
                        context: context,
                        firstext: 'نام مشتری',
                        secondtext: 'محمدعلی مراد بیگ زاده'),
                    elementRow(
                        context: context,
                        firstext: 'محل بازدید',
                        secondtext:
                            'شهرک غرب، فاز 4، زرافشان، خیابان شجریان،پلاک 13، واحد 8'),
                  ],
                ),
              ),
            ),
            const BookMark(),
          ],
        ));
  }

  Widget elementRow(
      {required BuildContext context,
      required String firstext,
      required String secondtext}) {
    final screenHeight = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: .59 * screenHeight,
            child: Text(
              secondtext,
              maxLines: 2,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff505050)),
            ),
          ),
          Row(
            children: [
              Text(
                firstext,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xff707070)),
              ),
              const SizedBox(
                width: 8,
              ),
              const CircleAvatar(
                radius: 4,
                backgroundColor: Color(0xffB7B7B7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
