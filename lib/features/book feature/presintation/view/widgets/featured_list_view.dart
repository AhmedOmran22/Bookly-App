import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/book%20feature/presintation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:bookly/features/book%20feature/presintation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/loading_indicator.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: width < 600 ? hight * .3 : width * .33,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 12, top: 10, bottom: 24),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (BuildContext context, int index) {
                return CustomBookImage(
                  imageUrl:
                      state.books[index].volumeInfo.imageLinks!.thumbnail!,
                  widthRatio: 1.5,
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return SizedBox(
            height: width < 600 ? hight * .33 : width * .33,
            child: CustomErrorWidget(errMessage: state.errMessage),
          );
        } else {
          return SizedBox(
            height: width < 600 ? hight * .33 : width * .33,
            child: const LoadingIndicator(),
          );
        }
      },
    );
  }
}
