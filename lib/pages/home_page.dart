import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/pages/home_category_item.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/home_popular_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteGreyColor,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: kWhiteColor,
            onTap: (value) {
              if (value == 1) {
                Navigator.pushNamed(context, '/wishlist');
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_home.png',
                  width: 24,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 24,
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 24,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/image_background.png',
            ),
            ListView(
              children: [
                // NOTE: HEADER
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/logo_dark.png',
                        width: 53,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Space',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: bold,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/icon_cart.png',
                        width: 30,
                      ),
                    ],
                  ),
                ),

                // NOTE: SEARCH BAR
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/search-page');
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                      left: 24,
                      right: 24,
                    ),
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 17,
                      right: 16,
                      bottom: 17,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: kWhiteColor,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Seach',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/icon_search.png',
                          width: 24,
                          color: kGreyColor,
                        )
                      ],
                    ),
                  ),
                ),

                // NOTE: CATEGORY TITLE
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 24,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Show All',
                        style: blackTextStyle,
                      )
                    ],
                  ),
                ),

                // NOTE: CATEGORY CAROUSEL
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: CarouselSlider(
                    items: const [
                      HomeCategoryItem(
                        title: 'Minimalis Chair',
                        subTitle: 'Chair',
                        imageURL: 'assets/image_product_category1.png',
                      ),
                      HomeCategoryItem(
                        title: 'Minimalis Table',
                        subTitle: 'Table',
                        imageURL: 'assets/image_product_category2.png',
                      ),
                      HomeCategoryItem(
                        title: 'Minimalis Chair',
                        subTitle: 'Chair',
                        imageURL: 'assets/image_product_category3.png',
                      ),
                    ],
                    options: CarouselOptions(
                      height: 140,
                      enableInfiniteScroll: false,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          categoryIndex = index;
                        });
                      },
                    ),
                  ),
                ),

                // NOTE: CATEGORY CAROUSEL INDICATOR
                Container(
                  margin: const EdgeInsets.only(
                    top: 13,
                    left: 24,
                    right: 24,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: categoryIndex == 0 ? kBlackColor : kGreyColor,
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: categoryIndex == 1 ? kBlackColor : kGreyColor,
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: categoryIndex == 2 ? kBlackColor : kGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),

                // NOTE: POPULAR SECTION
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    color: kWhiteColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 24,
                          left: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Category',
                              style: blackTextStyle.copyWith(
                                fontSize: 24,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              'Show All',
                              style: blackTextStyle,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SizedBox(
                        height: 310,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              HomePopularItem(
                                title: 'Poan Chair',
                                imageURL: 'assets/image_product_popular1.png',
                                price: 34,
                                isWishlist: true,
                              ),
                              HomePopularItem(
                                title: 'Poan Chair',
                                imageURL: 'assets/image_product_popular2.png',
                                price: 20,
                                isWishlist: false,
                              ),
                              HomePopularItem(
                                title: 'Poan Chair',
                                imageURL: 'assets/image_product_popular3.png',
                                price: 27,
                                isWishlist: false,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50)
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
