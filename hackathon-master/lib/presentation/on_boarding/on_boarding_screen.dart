import 'package:flutter/material.dart';

import 'package:hackathon/core/utils/size_config.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon/presentation/auth/login_screen.dart';
import 'package:hackathon/presentation/auth/sign_up_screen.dart';
import 'package:hackathon/presentation/widgets/primary_button.dart';
import 'on_boarding_model.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    getHeight(BuildContext context) => MediaQuery.of(context).size.height;
    getWidth(BuildContext context) => MediaQuery.of(context).size.width;

    ScreenUtil.init(context, designSize: const Size(360, 690));

    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, i) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: getWidth(context),
                  height: getProportionateScreenHeight(419.sp),
                  child: Image.asset(
                    contents[i].image,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20.sp)),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(21.sp),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          height: getProportionateScreenHeight(
                        23.sp,
                      )),
                      AutoSizeText(
                        contents[currentIndex].title,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Inter",
                          letterSpacing: -0.72,
                          color: const Color(0xff292D32),
                        ),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20.sp),
                        ),
                        child: AutoSizeText(
                          contents[currentIndex].description,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Intel Clear",
                            color: const Color(0xff6A798A),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(context) * .15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          contents.length,
                          (index) => buildDot(index, context),
                        ),
                      ),
                      if (currentIndex != contents.length - 1)
                        SizedBox(
                          height: 20.sp,
                        ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PrimaryButton(
                          fillColor: const Color(0xffff00AE9A),

                            onPressed: () {
                              if (currentIndex == contents.length - 1) {
                                /// navigate to the signup page
                                /// optionally save the value in preferences that user has visited the app
                                /// PrefUtils.setBool(AppConstants.firstVisit, true);
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const SignUpScreen(),
                                  ),
                                );
                              } else {
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                            child: Text(
                              currentIndex == contents.length - 1
                                  ? "I'm new to the app"
                                  : "Next",
                              style: TextStyle(
                                fontSize: 16.sp,
                                
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Inter',
                              ),
                            )),
                      ),
                      if (currentIndex == contents.length - 1)
                        PrimaryButton(
                          onPressed: () {
                            ///Navigate to Login Page
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ));
                          },
                          fillColor: Colors.transparent,
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter',
                              color: Colors.black,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Colors.black : Colors.grey,
      ),
    );
  }
}
