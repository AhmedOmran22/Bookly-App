import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(child: CustomAppBar()),
          SliverToBoxAdapter(child: FeaturedListView()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'Best Seller',
                style: Styles.textStyle20,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 5)),
          SliverFillRemaining(child: BestSellerListView()),
        ],
      ),
    );
  }
}



 // SliverFillRemaining(
   //   child: BestSellerListView(),
    // )

// ------------------------------------------------------------
// class BestSellerListView extends StatelessWidget {
//   const BestSellerListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       itemCount: 10,
//       itemBuilder: (BuildContext context, int index) {
//         return const Padding(
//           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
//           child: BestSellerListViewItem(),
//         );
//       },
//     );
//   }
// }


// ------------------------------------------------------------

//  Column(
//         children: [
//           const SizedBox(height: 20),
//           const CustomAppBar(),
//           SizedBox(
//             height: width < 600 ? hight * .33 : width * .33,
//             child: const FeaturedListView(),
//           ),
//           const Padding(
//             padding: EdgeInsets.only(left: 24),
//             child: Text(
//               'Best Seller',
//               style: Styles.textStyle18,
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Expanded(child: BestSellerListView())
//         ],
//       ),

// ------------------------------------------------------------
