import 'package:flutter/material.dart';
class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimaion,
  });

  final Animation<Offset> slidingAnimaion;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimaion,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimaion,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'read free books',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          );
        });
  }
}
