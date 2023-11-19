import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/on_boarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: CarouselSlider(
            items: const [
              OnBoardingItem(
                imageUrl: 'assets/image_onboarding1.png',
                title: 'Buy Furniture Easily',
                subTitle:
                    'With CSpace now you can buy your furniture needs easily',
              ),
              OnBoardingItem(
                imageUrl: 'assets/image_onboarding2.png',
                title: 'Fast Delivery',
                subTitle:
                    'All products you buy are free shipping all over Indonesia',
              ),
              OnBoardingItem(
                imageUrl: 'assets/image_onboarding3.png',
                title: 'Best Price',
                subTitle:
                    'We offer the best price because we produce it ourselves',
              ),
            ],
            options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                initialPage: currentIndex,
                onPageChanged: (index, _) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
            carouselController: controller,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Text(
                  'SKIP',
                  style: blackTextStyle.copyWith(fontSize: 18),
                )),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == 0 ? kBlackColor : kLineDarkColor),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == 1 ? kBlackColor : kLineDarkColor),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == 2 ? kBlackColor : kLineDarkColor),
                ),
              ],
            ),
            TextButton(
                onPressed: () {
                  if (currentIndex == 2) {
                    Navigator.pushNamed(context, '/sign-in');
                  } else {
                    controller.nextPage();
                  }
                },
                child: Text(
                  'NEXT',
                  style: blackTextStyle.copyWith(fontSize: 18),
                ))
          ]),
        ),
        const SizedBox(
          height: 29,
        )
      ],
    ));
  }
}
