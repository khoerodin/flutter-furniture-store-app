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
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/category'),
      child: SizedBox(
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
                child: Row(
                  children: [
                    const SizedBox(width: 150),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          subTitle,
                          style: greyTextStyle.copyWith(
                            fontWeight: semiBold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              imageURL,
              height: 122,
            )
          ],
        ),
      ),
    );
  }
}
