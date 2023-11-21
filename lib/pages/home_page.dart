import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                Container(
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
                )
              ],
            )
          ],
        ));
  }
}
