import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'simillar_books_list_view.dart';

class SmilliarBooksSection extends StatelessWidget {
  const SmilliarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also Like ',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        const SimiilarBooksListView(),
      ],
    );
  }
}