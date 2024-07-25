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
        children: [
          const SizedBox(height: 20),
          const CustomAppBar(),
          SizedBox(
            height: width < 600 ? hight * .33 : width * .33,
            child: const FeaturedListView(),
          )
        ],
      ),
    );
  }
}
