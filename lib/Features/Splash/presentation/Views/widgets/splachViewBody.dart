import 'package:bookly_app/Features/Splash/presentation/Views/widgets/slidingTextView.dart';
import 'package:bookly_app/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplachViewBody extends StatefulWidget {
  SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    NavicateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 15,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 3), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
  }

  void NavicateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push('/homeView');
      // Get.to(() => HomeView(), transition: Transition.downToUp);
    });
  }
}
