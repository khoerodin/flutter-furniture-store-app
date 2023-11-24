import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_list_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteGreyColor,
        appBar: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            70,
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kWhiteColor,
            elevation: 0,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: kBlackColor,
                  ),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: kWhiteGreyColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            onFieldSubmitted: (value) {
                              Navigator.pushNamed(context, '/search-result');
                            },
                            decoration: const InputDecoration.collapsed(
                              hintText: 'Search',
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(
                          Icons.close,
                          color: kGreyColor,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            const SizedBox(
              height: 41,
            ),
            Text(
              'Recommedation',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ProductListItem(
              title: 'Poan Chair',
              price: 45,
              imageURL: 'assets/image_product_list1.png',
            ),
            const ProductListItem(
              title: 'Poan Chair',
              price: 36,
              imageURL: 'assets/image_product_list2.png',
            ),
            const ProductListItem(
              title: 'Poan Chair',
              price: 19,
              imageURL: 'assets/image_product_list3.png',
            ),
            const ProductListItem(
              title: 'Poan Chair',
              price: 44,
              imageURL: 'assets/image_product_list4.png',
            ),
          ],
        ));
  }
}
