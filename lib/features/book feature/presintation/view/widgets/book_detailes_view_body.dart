import 'package:bookly/features/book%20feature/presintation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_book_detailes_app_bar.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBarBookDerailes(),
              const SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .17),
                child: const CustomBookImage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
