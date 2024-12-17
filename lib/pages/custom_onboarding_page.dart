import 'package:flutter/material.dart';
import 'package:home_work2_flutter/pages/on_boarding_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomOnBoardingPage extends StatelessWidget {
  CustomOnBoardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.orangeWord,
      required this.subTitle,
      required this.btnText,
      required this.onTap,
        required this.isWhite
      });
  final String image;
  final String title;
  final String orangeWord;
  final String subTitle;
  final String btnText;
   void Function()? onTap;
   bool isWhite = true ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isWhite ? Colors.white :Color(0xff16181F),
      body: Column(
        children: [
          Container(
            width: 375,
            height: 335,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
                borderRadius: BorderRadius.circular(30)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            child: Column(
              children: [
                RichText(
                    textAlign: TextAlign.center,
                    text:  TextSpan(
                      style:  TextStyle(
                          color:isWhite? Colors.black : Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      text: title,
                      children: <TextSpan>[
                        TextSpan(
                            spellOut: true,
                            text: orangeWord,
                            style:const  TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffFF7029))),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Container(

                        child: Image(image: AssetImage(isWhite?"assets/images/img_3.png":"assets/images/img_4.png"),
                        width: 80,
                        ),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 36, right: 36, bottom: 30),
            child: Container(
              width: 303,
              height: 72,
              child: RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                    text: subTitle
          ),
              ),
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 4,
            effect:  WormEffect(
              offset: 20,
              dotHeight: 12,
              dotWidth: 12,
              type: WormType.normal,
            ),// your preferred effect
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: InkWell(
              onTap: onTap,
              child: Container(
                width: 335,
                height: 56,
                decoration: BoxDecoration(
                    color: const Color(0xff0D6EFD),
                    borderRadius: BorderRadius.circular(16)),
                child:  Center(
                  child: Text( btnText,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
