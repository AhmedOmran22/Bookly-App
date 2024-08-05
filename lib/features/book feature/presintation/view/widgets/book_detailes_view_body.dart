import 'package:bookly/features/book%20feature/data/models/book%20model/book_model.dart';
import 'package:flutter/material.dart';
import 'book_detailes_section.dart';
import 'books_actions.dart';
import 'custom_book_detailes_app_bar.dart';
import 'simillar_book_section.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBarBookDerailes(),
              BookDetailesSction(
                bookModel: bookModel,
              ),
              const SizedBox(height: 25),
              BookActions(bookModel: bookModel),
              const SizedBox(height: 25),
              const SizedBox(height: 10),
              const SmilliarBooksSection(),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
