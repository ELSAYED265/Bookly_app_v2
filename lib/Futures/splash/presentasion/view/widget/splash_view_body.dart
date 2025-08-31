import 'package:booky_app/Futures/home/presentation/view/Home_view.dart';
import 'package:booky_app/core/utils/appRoute.dart';
import 'package:booky_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

//SingleTickerProviderStateMixin دي الي بتتحكم في ان duration يكون منتظم
class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedContainer;
  late Animation<Offset> sliderAnimation;
  @override
  void initState() {
    initySlidingAnimation();
    transtionToHome();
    super.initState();
  }

  void transtionToHome() async {
    Future.delayed(
      Duration(seconds: 2),
      () => GoRouter.of(context).push(AppRouter.homeview),
      // () => Get.to(
      //   HomeView(),
      //   transition: Transition.fade,
      //   duration: kTransitionDuration,
      // ),
    );
  }

  //بص بالعربي انا عندي حاجه اسمها animationcontroller بيطلع قيم من 0ال1 بيستخدم انا حاجه اسمخا animation عشانا يديني مدي كبير برحتي
  //بص ياسيدي انا بعمل opject من كذا لي كذا وبياخد قيمه من animationcontroller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(height: 4),
          AnimatedBuilder(
            animation: sliderAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: sliderAnimation,
                child: Text(
                  "Read Free Books",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void initySlidingAnimation() {
    animatedContainer = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    sliderAnimation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset.zero,
    ).animate(animatedContainer);
    animatedContainer.forward();
  }
}
