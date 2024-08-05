import 'package:bookly/core/utils/functions/url_launcher.dart';
import 'package:bookly/features/book%20feature/data/models/book%20model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () async {},
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              text: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                luanchCustmUrl(context, bookModel.volumeInfo.previewLink);
              },
              backgroundColor: const Color(0xffEF8363),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              text: getText(bookModel),
            ),
          )
        ],
      ),
    );
  }

  getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'not Avialable';
    } else {
      return 'Perview';
    }
  }
}
