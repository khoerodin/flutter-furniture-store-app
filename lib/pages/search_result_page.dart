import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/product_grid_item.dart';
import 'package:space/widgets/product_list_item.dart';
import 'package:space/widgets/skeleton_item.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            110,
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
                ),
                const SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/icon_filter.png',
                  width: 24,
                )
              ],
            ),
            bottom: TabBar(
              indicatorColor: kBlackColor,
              labelColor: kBlackColor,
              isScrollable: true,
              tabs: const [
                Tab(text: 'Chair '),
                Tab(text: 'Table '),
                Tab(text: 'Accessories '),
                Tab(text: 'Living Room '),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            buildBody(),
            buildBody(),
            buildBody(),
            buildBody(),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Result for: Poang',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Image.asset(
              'assets/icon_list.png',
              width: 24,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // buildLoading(),
        buildGrid(),
        // buildList(),
      ],
    );
  }

  Widget buildLoading() {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
      ],
    );
  }

  Widget buildGrid() {
    return const Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        ProductGridItem(
          title: 'Poan Chair',
          imageURL: 'assets/image_product_grid1.png',
          price: 34,
          isWishlist: true,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageURL: 'assets/image_product_grid2.png',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageURL: 'assets/image_product_grid3.png',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageURL: 'assets/image_product_grid4.png',
          price: 34,
          isWishlist: true,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageURL: 'assets/image_product_grid1.png',
          price: 34,
          isWishlist: true,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageURL: 'assets/image_product_grid2.png',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageURL: 'assets/image_product_grid3.png',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          title: 'Poan Chair',
          imageURL: 'assets/image_product_grid4.png',
          price: 34,
          isWishlist: true,
        ),
      ],
    );
  }

  Widget buildList() {
    return const Column(
      children: [
        ProductListItem(
          title: 'Poan Chair',
          price: 45,
          imageURL: 'assets/image_product_list1.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 36,
          imageURL: 'assets/image_product_list2.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 19,
          imageURL: 'assets/image_product_list3.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 44,
          imageURL: 'assets/image_product_list4.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 45,
          imageURL: 'assets/image_product_list1.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 36,
          imageURL: 'assets/image_product_list2.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 19,
          imageURL: 'assets/image_product_list3.png',
        ),
        ProductListItem(
          title: 'Poan Chair',
          price: 44,
          imageURL: 'assets/image_product_list4.png',
        ),
      ],
    );
  }
}
