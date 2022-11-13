import 'package:arisa/view/widgets/book_mark.dart';
import 'package:arisa/view/widgets/enter_to_file.dart';
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
                        firstext: 'تلفن همراه',
                        secondtext: '09127825671'),
                    elementRow(
                        context: context,
                        firstext: 'محل بازدید',
                        secondtext:
                            'شهرک غرب، فاز 4، زرافشان، خیابان شجریان،پلاک 13، واحد 8'),
                    greyCard(context),
                    const EnterToFile(),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                ),
              ),
            ),
            const BookMark(),
          ],
        ));
  }

  Widget greyCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffF6F6F8),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            greyelementRow(
                context: context,
                firstext: 'وضعیت پرونده',
                asset: 'assets/file_state.png',
                secondtext: 'تایید شده توسط نماینده'),
            greyelementRow(
                context: context,
                firstext: 'زمان بازدید',
                asset: 'assets/time.png',
                secondtext: '14:11 _ 1401-06-01'),
          ],
        ),
      ),
    );
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
            width: .5 * screenHeight,
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

  Widget greyelementRow(
      {required BuildContext context,
      required String firstext,
      required String secondtext,
      required String asset}) {
    final screenHeight = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: .4 * screenHeight,
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
              Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: Text(
                  firstext,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff707070)),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              Image.asset(
                asset,
              )
            ],
          ),
        ],
      ),
    );
  }
}
