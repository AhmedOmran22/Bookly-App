import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/book%20feature/presintation/manager/newst%20books%20cubit/newst_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/loading_indicator.dart';
import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is NewstBooksFailure) {
          return SliverFillRemaining(
            child: CustomErrorWidget(
              errMessage: state.errMessage,
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: LoadingIndicator(),
          );
        }
      },
    );
  }
}

//     ListView.builder(
//   physics: const NeverScrollableScrollPhysics(),
//   itemCount: 10,
//   itemBuilder: (BuildContext context, int index) {
//     return const Padding(
//       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
//       child: BestSellerListViewItem(),
//     );
//   },
// );
