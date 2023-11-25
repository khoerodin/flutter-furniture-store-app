import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconURL;
  final String title;

  const ProfileMenuItem({
    super.key,
    required this.iconURL,
    required this.title,
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
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.chevron_right,
            color: kGreyColor,
          )
        ],
      ),
    );
  }
}
