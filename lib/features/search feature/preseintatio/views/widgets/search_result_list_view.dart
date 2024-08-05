import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/loading_indicator.dart';
import 'package:bookly/features/search%20feature/preseintatio/manager/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../book feature/presintation/view/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSucess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: BookListViewItem(bookModel: state.books[index]),
                );
              },
            ),
          );
        } else if (state is SearchFailure) {
          return SliverFillRemaining(
            child: CustomErrorWidget(errMessage: state.errMessage),
          );
        } else if (state is SearchInitial) {
          return const SliverFillRemaining(
            child: SizedBox(),
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
