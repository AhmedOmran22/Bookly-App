import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    log(width.toString());
    return SizedBox(
      height: width < 600 ? hight * .25 : hight * .7,
      child: AspectRatio(
        aspectRatio: 1.4 / 2,
        child: Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(AssetsData.test),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
