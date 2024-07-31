import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomSearchTextField(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 18),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                'Resutls',
                style: Styles.textStyle20,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 5)),
          SearchResultListView(),
        ],
      ),
    );
  }
}
