import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class ProductGridItem extends StatelessWidget {
  final String title;
  final String imageURL;
  final int price;
  final bool isWishlist;

  const ProductGridItem({
    super.key,
    required this.title,
    required this.imageURL,
    required this.price,
    required this.isWishlist,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: ((MediaQuery.of(context).size.width - (24 * 2 + 18 + 16)) / 2),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageURL),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$price',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Image.asset(
                  isWishlist
                      ? 'assets/button_wishlist_active.png'
                      : 'assets/button_wishlist.png',
                  height: 44,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
