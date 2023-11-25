import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          onTap: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (value == 1) {
              Navigator.pushNamed(context, '/wishlist');
            }
          },
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
                color: kBlueColor,
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
              const SizedBox(
                height: 130,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 24,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 130,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image_profile.png',
                          width: 120,
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Theresa Webb',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 88,
                      height: 44,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: kWhiteColor,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/icon_switch_dark.png',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(36),
                  ),
                  color: kWhiteColor,
                ),
                child: const Column(
                  children: [
                    ProfileMenuItem(
                      iconURL: 'assets/icon_profile.png',
                      title: 'My Profile',
                    ),
                    ProfileMenuItem(
                      iconURL: 'assets/icon_address.png',
                      title: 'My Address',
                    ),
                    ProfileMenuItem(
                      iconURL: 'assets/icon_order.png',
                      title: 'My Order',
                    ),
                    ProfileMenuItem(
                      iconURL: 'assets/icon_payment.png',
                      title: 'Payment Method',
                    ),
                    ProfileMenuItem(
                      iconURL: 'assets/icon_wishlist.png',
                      title: 'My Wishlist',
                    ),
                    ProfileMenuItem(
                      iconURL: 'assets/icon_faq.png',
                      title: 'Frequently Asked Questions',
                    ),
                    ProfileMenuItem(
                      iconURL: 'assets/icon_cs.png',
                      title: 'Customer Care',
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
