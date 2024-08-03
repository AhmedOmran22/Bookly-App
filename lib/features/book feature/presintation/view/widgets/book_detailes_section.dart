import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailesSction extends StatelessWidget {
  const BookDetailesSction({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(height: 30),
        SizedBox(
          height: width < 600 ? hight * .35 : width * .5,
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 20),
        const Text(
          'The jungle Book ',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 5),
        Text(
          'Rudyard kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 10),
        const BookRating(),
      ],
    );
  }
}
