import 'package:flutter/material.dart';
import 'book_detailes_section.dart';
import 'books_actions.dart';
import 'custom_book_detailes_app_bar.dart';
import 'simillar_book_section.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBarBookDerailes(),
              BookDetailesSction(),
              SizedBox(height: 25),
              BookActions(),
              SizedBox(height: 25),
              SizedBox(height: 10),
              SmilliarBooksSection(),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
