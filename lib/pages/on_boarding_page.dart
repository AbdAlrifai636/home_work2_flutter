import 'package:flutter/material.dart';
import 'package:home_work2_flutter/pages/custom_onboarding_page.dart';
import 'package:home_work2_flutter/pages/splach_page.dart';

final controller = PageController();

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({super.key, required this.isWhite});
  bool isWhite = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          SplashPage(),
          CustomOnBoardingPage(
            onTap: () {
              controller.nextPage(
                  duration: Duration(seconds: 4), curve: Curves.bounceInOut);
            },
            image: "assets/images/img.png",
            title: "Life is short and the world is ",
            orangeWord: "wide",
            subTitle:
                "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
            btnText: "Get Started",
            isWhite: isWhite,
          ),
          CustomOnBoardingPage(
            onTap: () {
              controller.nextPage(
                  duration: Duration(seconds: 4), curve: Curves.bounceInOut);
            },
            image: "assets/images/img_1.png",
            title: "It’s a big world out there go ",
            orangeWord: "explore",
            subTitle:
                "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
            btnText: "Next",
            isWhite: isWhite,
          ),
          CustomOnBoardingPage(
            onTap: () {
              controller.nextPage(
                  duration: Duration(seconds: 4), curve: Curves.bounceInOut);
            },
            image: "assets/images/img_2.png",
            title: "People don’t take trips, trips take ",
            orangeWord: "people",
            subTitle:
                "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
            btnText: "Next",
            isWhite: isWhite,
          ),
        ],
      ),
    );
  }
}
