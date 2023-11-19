import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class OnBoardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const OnBoardingItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 99,
        ),
        Image.asset(imageUrl),
        const SizedBox(
          height: 127,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            title,
            style: greyTextStyle.copyWith(fontSize: 26),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            subTitle,
            style: greyTextStyle.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
