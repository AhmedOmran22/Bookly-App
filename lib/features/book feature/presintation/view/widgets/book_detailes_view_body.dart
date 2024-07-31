import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_rating.dart';
import 'books_actions.dart';
import 'custom_book_detailes_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBarBookDerailes(),
              const SizedBox(height: 35),
              SizedBox(
                height: width < 600 ? hight * .35 : width * .5,
                child: const CustomBookImage(),
              ),
              const SizedBox(height: 35),
              const Text(
                'The jungle Book ',
                style: Styles.textStyle30,
              ),
              const SizedBox(height: 3),
              Text(
                'Rudyard kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 18),
              const BookRating(),
              const SizedBox(height: 40),
              const BookActions(),
            ],
          ),
        ),
      ),
    );
  }
}
