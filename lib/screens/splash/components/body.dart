import 'package:flutter/material.dart';
import 'package:shopping/components/default_button.dart';
import 'package:shopping/constants.dart';
import 'package:shopping/screens/splash/components/splash_content.dart';
import 'package:shopping/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "image": "assets/images/splash_1.png",
      "text": "Welcome to Tokoto, Let's shop!"
    },
    {
      "image": "assets/images/splash_2.png",
      "text": "We help people connect with stores \n around Visakhapatnam"
    },
    {
      "image": "assets/images/splash_3.png",
      "text": "We show easy way to shop. \n Just stay at home with us."
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                      image: splashData[index]["image"],
                      text: splashData[index]["text"])),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            splashData.length, (index) => buildDot(index)),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      DefaultButton(text: "Continue"),
                      Spacer()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: 6,
      width: currentPage == index ? 20 : 6,
      margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
