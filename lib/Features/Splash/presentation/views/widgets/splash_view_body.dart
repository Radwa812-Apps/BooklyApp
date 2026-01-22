import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:radwa_back/Features/Home/presentation/views/home_view.dart';
import 'package:radwa_back/Features/Splash/presentation/views/widgets/text_animationBuilder.dart';

import '../../../../../constans.dart';
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
      Get.to(
        () => HomeView(),
        transition: Transition.fade,
        duration: kTranstionsDuration,
      );
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
