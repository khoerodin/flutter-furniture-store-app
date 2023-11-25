import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      body: Stack(
        children: [
          Image.asset('assets/image_background.png'),
          Container(
            margin: const EdgeInsets.only(
              top: 90,
            ),
            child: Image.asset(
              'assets/image_detail1.png',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 66,
              left: 20,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kWhiteColor,
              border: Border.all(
                color: kLineDarkColor,
              ),
            ),
            child: const Icon(
              Icons.chevron_left,
            ),
          )
        ],
      ),
    );
  }
}
