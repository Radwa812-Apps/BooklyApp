import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:radwa_back/Features/Splash/presentation/views/widgets/text_animationBuilder.dart';
import 'package:radwa_back/core/app_routers.dart';
import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initAnimation();
    // slidingAnimation.addListener(() {  كدا هيعيد بناء البلد كلها الا الحاجات الكونست
    // setState(() {});
    // });

    navigateToHome();
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
      children: <Widget>[
        Center(child: Image.asset(AssetsData.splashLogo)),
        const SizedBox(height: 10),
        TextAnimationBuilder(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      context.go(AppRouters.homeView);
    });
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween(
      begin: Offset(0, 2),
      end: Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
    // slidingAnimation.addListener(() {  كدا هيعيد بناء البلد كلها الا الحاجات الكونست
    // setState(() {});
    // });
  }
}
