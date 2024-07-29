import 'package:bookly/constans.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/book%20feature/presintation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimaion;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigatoToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        const SizedBox(height: 4),
        SlidingText(slidingAnimaion: slidingAnimaion),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    slidingAnimaion = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  Future<dynamic> navigatoToHome() {
    return Future.delayed(
      const Duration(seconds: 3),
      () => Get.off(
        const HomeView(),
        transition: Transition.native,
        duration: kDurationTransition,
      ),
    );
  }
}


   // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     builder: (context) {
        //       return const HomeView();
        //     },
        //   ),
        // );