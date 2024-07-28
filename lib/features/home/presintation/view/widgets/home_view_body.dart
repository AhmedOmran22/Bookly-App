import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const CustomAppBar(),
          SizedBox(
            height: width < 600 ? hight * .33 : width * .33,
            child: const FeaturedListView(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
          ),
          const SizedBox(height: 16),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          SizedBox(
            child: AspectRatio(
              aspectRatio: 1.85 / 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.test),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          const Column(
            children: 
            [
              
            ],
          )
        ],
      ),
    );
  }
}
