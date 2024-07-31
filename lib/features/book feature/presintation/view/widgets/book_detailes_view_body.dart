import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_rating.dart';
import 'books_actions.dart';
import 'custom_book_detailes_app_bar.dart';
import 'custom_book_image.dart';
import 'simillar_books_list_view.dart';

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
              const SizedBox(height: 25),
              const BookActions(),
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also Like ',
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SimiilarBooksListView(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
