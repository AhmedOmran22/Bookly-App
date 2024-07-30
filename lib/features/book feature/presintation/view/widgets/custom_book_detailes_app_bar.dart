import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDerailes extends StatelessWidget {
  const CustomAppBarBookDerailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
            size: 34,
          ),
        ),
        const Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            size: 34,
          ),
        )
      ],
    );
  }
}
