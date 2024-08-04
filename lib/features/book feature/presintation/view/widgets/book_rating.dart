import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Colors.yellow,
        ),
        const SizedBox(width: 8),
        Text('4.8',
            style: Styles.textStyle18.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            )),
        const SizedBox(width: 5),
        const Text('(2390)', style: Styles.textStyle14),
      ],
    );
  }
}
