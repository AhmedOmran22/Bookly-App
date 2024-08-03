import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimiilarBooksListView extends StatelessWidget {
  const SimiilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: width < 600 ? hight * .19 : width * .33,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const CustomBookImage();
        },
      ),
    );
  }
}
