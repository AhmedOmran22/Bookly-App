import 'package:bookly/features/book%20feature/data/models/book%20model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailesSction extends StatelessWidget {
  const BookDetailesSction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(height: 30),
        SizedBox(
          height: width < 600 ? hight * .35 : width * .5,
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            widthRatio: 1.5,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          textAlign: TextAlign.center,
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 5),
        Text(
          textAlign: TextAlign.center,
          bookModel.volumeInfo.authors![0],
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
