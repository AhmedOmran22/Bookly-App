import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 20,
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: BestSellerListViewItem(),
          );
        },
      ),
    );
  }
}
 
    

    //     ListView.builder(
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: 10,
    //   itemBuilder: (BuildContext context, int index) {
    //     return const Padding(
    //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    //       child: BestSellerListViewItem(),
    //     );
    //   },
    // );