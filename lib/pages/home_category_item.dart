import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomeCategoryItem extends StatelessWidget {
  const HomeCategoryItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageURL,
  });

  final String title;
  final String subTitle;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: MediaQuery.of(context).size.width - 24 * 2,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 102,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          )
        ],
      ),
    );
  }
}
