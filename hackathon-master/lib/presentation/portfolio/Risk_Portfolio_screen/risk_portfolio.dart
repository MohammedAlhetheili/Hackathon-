import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/presentation/invest_screen/invest_screen.dart';
import 'package:hackathon/presentation/widgets/primary_button.dart';
import 'package:hackathon/res/color.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../res/assets.dart';

class RiskPortfolio extends StatefulWidget {
  const RiskPortfolio({super.key});

  @override
  State<RiskPortfolio> createState() => _RiskPortfolioState();
}

class _RiskPortfolioState extends State<RiskPortfolio> {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color(0xff07C57D).withOpacity(0.5),
      body: ListView(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: getProportionateScreenHeight(580),
                  decoration: const BoxDecoration(
                    color: AppColor.btnColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: getProportionateScreenHeight(50),
                      ),
                      AutoSizeText(
                        'Based on your answer ',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffE8E8E8),
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      AutoSizeText(
                        'We Recommend a Portfolio ',
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xffFFFFFF),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.r,
                      right: 20.r,
                      top: getProportionateScreenHeight(150)),
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(
                        color: AppColor.btnColor,
                        // You can specify the color of the border here
                        width:
                            2, // You can adjust the width of the border here
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(30),
                        ),
                        Container(
                          width: getProportionateScreenWidth(85),
                          decoration: BoxDecoration(
                              color: const Color(0xffE5FFF1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            child: Center(
                                child: AutoSizeText(
                              'Low Risk',
                              style: TextStyle(
                                  color: const Color(0xff00AE4E),
                                  fontSize: 10.sp,
                                  fontFamily: 'Inter'),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        AutoSizeText(
                          'Low Risk Portfolio',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Inter'),
                        ),
                        SizedBox(height: getProportionateScreenHeight(10)),
                        AutoSizeText(
                          'Low risk portfolio with greater investment concentration on sukuk',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: const Color(0xffBEC1C7),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter'),
                        ),
                        SizedBox(height: getProportionateScreenHeight(30)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.r),
                          child: Container(
                            width: Get.width,
                            decoration: BoxDecoration(
                                color: const Color(0xffF9FBFA),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: getProportionateScreenHeight(6),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 14.r),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Center(
                                            child: AutoSizeText(
                                          'Average Annual Return',
                                          style: TextStyle(
                                              color: const Color(0xff8D90A1),
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter'),
                                        )),
                                        Row(
                                          children: [
                                            Center(
                                                child: AutoSizeText(
                                              '4.02%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Inter'),
                                            )),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              Assets.polygon,
                                              height: 15,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 14.r),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'Maximum Historica \nAnnual Returns',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: const Color(0xff8D90A1),
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter'),
                                        ),
                                        Row(
                                          children: [
                                            Center(
                                                child: AutoSizeText(
                                              '4.02%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Inter'),
                                            )),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              Assets.polygon,
                                              height: 15,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 14.r),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AutoSizeText(
                                          'Maximum Historical \nAnnual Drawdown',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: const Color(0xff8D90A1),
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter'),
                                        ),
                                        Row(
                                          children: [
                                            Center(
                                                child: AutoSizeText(
                                              '4.02%',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Inter'),
                                            )),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              Assets.polygon1,
                                              height: 15,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(30),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.r, right: 30.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircularPercentIndicator(
                                    radius: 25.0,
                                    lineWidth: 7.0,
                                    percent: 0.7,
                                    progressColor: const Color(0xff505897),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Sukuk',
                                        style: TextStyle(
                                            color: const Color(0xff505897),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter'),
                                      ),
                                      AutoSizeText(
                                        '70%',
                                        style: TextStyle(
                                            color: const Color(0xff505897),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  CircularPercentIndicator(
                                    radius: 25.0,
                                    lineWidth: 7.0,
                                    percent: 0.2,
                                    progressColor: const Color(0xff08C16C),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Saudi Stocks',
                                        style: TextStyle(
                                            color: const Color(0xff08C16C),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter'),
                                      ),
                                      AutoSizeText(
                                        '5%',
                                        style: TextStyle(
                                            color: const Color(0xff08C16C),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.r, right: 30.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircularPercentIndicator(
                                    radius: 25.0,
                                    lineWidth: 7.0,
                                    percent: 0.15,
                                    progressColor: const Color(0xffFDA616),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Real Estate',
                                        style: TextStyle(
                                            color: const Color(0xffFDA616),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter'),
                                      ),
                                      AutoSizeText(
                                        '15%',
                                        style: TextStyle(
                                            color: const Color(0xffFDA616),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  CircularPercentIndicator(
                                    radius: 25.0,
                                    lineWidth: 7.0,
                                    percent: 0.1,
                                    progressColor: const Color(0xff5EC6CF),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Saudi Stocks',
                                        style: TextStyle(
                                            color: const Color(0xff5EC6CF),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter'),
                                      ),
                                      AutoSizeText(
                                        '10%',
                                        style: TextStyle(
                                            color: const Color(0xff5EC6CF),
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Inter'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(40),
                        ),
                        Image.asset(
                          Assets.frame,
                          height: 10,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(30),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: getProportionateScreenHeight(100),
        width: Get.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x1E9095AB),
              blurRadius: 20,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(100),
              vertical: getProportionateScreenHeight(25)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 15,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: PrimaryButton(
              radius: BorderRadius.circular(50),
              fillColor: AppColor.btnColor,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InvestScreen()));

              },
              child: Text(
                'Create Portfolio',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
