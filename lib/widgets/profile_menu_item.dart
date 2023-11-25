import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconURL;
  final String title;
  final bool isLightMode;

  const ProfileMenuItem({
    super.key,
    required this.iconURL,
    required this.title,
    required this.isLightMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: [
          Image.asset(
            iconURL,
            width: 24,
            color: isLightMode ? null : kWhiteColor,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
              color: isLightMode ? null : kWhiteColor,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.chevron_right,
            color: isLightMode ? null : kGreyColor,
          )
        ],
      ),
    );
  }
}
