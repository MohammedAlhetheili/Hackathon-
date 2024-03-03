import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/res/assets.dart';
import 'dart:math' as math;

import 'package:percent_indicator/linear_percent_indicator.dart';

class FinancialScreen extends StatefulWidget {
  const FinancialScreen({Key? key}) : super(key: key);

  @override
  _FinancialScreenState createState() => _FinancialScreenState();
}

class _FinancialScreenState extends State<FinancialScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          // backgroundColor: Color(0xffF4F6F7).withOpacity(0.5),
          appBar: AppBar(
            // backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const AutoSizeText(
              "Financial Report",
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  color: Color(
                    0xffb4b9bf,
                  ),
                  fontWeight: FontWeight.w600),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffF4F6F7),
                      borderRadius: BorderRadius.circular(26.0)),
                  child: Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(34.0)),
                      labelColor: Color(0xff00AE9A),
                      unselectedLabelColor: Color(0xff90949F),
                      dividerColor: Colors.transparent,
                      tabs: const [
                        Tab(
                          child: AutoSizeText("Weekly",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                        Tab(
                          child: AutoSizeText("Monthly",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                        Tab(
                          child: AutoSizeText("Yearly",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: TabBarView(
                      children: [
                        ListView(children: [
                          Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: getProportionateScreenHeight(50),
                                ),
                                SvgPicture.asset(
                                  "assets/images/chart.svg",
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(35),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 17.0, horizontal: 25.0),
                                  height: 83,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(26.0),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xff46D094)
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                  BorderRadius.circular(1.0),
                                                ),
                                                height:
                                                getProportionateScreenHeight(
                                                    12),
                                                width:
                                                getProportionateScreenWidth(12),
                                                child: Transform.rotate(
                                                  angle: math.pi /
                                                      4.5, // Rotate by 90 degrees
                                                  child: const Icon(
                                                    Icons.arrow_back,
                                                    size: 6,
                                                    color: Color(0xff46D094),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                getProportionateScreenWidth(5),
                                              ),
                                              const AutoSizeText("Total Income",
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff8D90A1),
                                                    fontSize: 14,
                                                  ))
                                            ],
                                          ),
                                          const AutoSizeText("    SAR 182.00 ",
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff000000),
                                                fontSize: 16,
                                              ))
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xff46D094)
                                                      .withOpacity(0.1),
                                                  borderRadius:
                                                  BorderRadius.circular(1.0),
                                                ),
                                                height:
                                                getProportionateScreenHeight(
                                                    12),
                                                width:
                                                getProportionateScreenWidth(12),
                                                child: Transform.rotate(
                                                  angle: math.pi /
                                                      4.5, // Rotate by 90 degrees
                                                  child: const Icon(
                                                    Icons.arrow_back,
                                                    size: 6,
                                                    color: Color(0xff46D094),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width:
                                                getProportionateScreenWidth(5),
                                              ),
                                              const AutoSizeText("Daily Average",
                                                  style: TextStyle(
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff8D90A1),
                                                    fontSize: 14,
                                                  ))
                                            ],
                                          ),
                                          const AutoSizeText("    SAR 55.00 ",
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff000000),
                                                fontSize: 16,
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                // Work in this container
                                Container(
                                  constraints: const BoxConstraints(minHeight: 130),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.fromLTRB(24, 18, 24, 18),
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [

                                          Row(
                                            children: [
                                              Container(
                                                height:
                                                getProportionateScreenHeight(40),
                                                width: getProportionateScreenWidth(40),
                                                decoration: const BoxDecoration(
                                                  color:  Color(0xffF4F6F7),
                                                  shape: BoxShape.circle
                                                ),
                                                child: Center(child: Image.asset(Assets.investment, height: getProportionateScreenHeight(18), width: getProportionateScreenWidth(18),)),
                                              ),

                                              Text(
                                                'Investment Account',
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color(0xff2B2D33),
                                                  fontFamily: 'Inter',
                                                ),
                                              ),


                                            ],
                                          )
                                        ],
                                      ),

                                      const SizedBox(height: 10,),

                                      Align(
                                        alignment: Alignment.topLeft,
                                        child:
                                        Text(
                                          'Last paid on August 28 2023',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff79808A),
                                            fontFamily: 'Inter',
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15.sp),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'SAR 900 / ',
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xff00AE9A),
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                              Text(
                                                '1000',
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xffB8B6F7),
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                            ],
                                          ),


                                          Text(
                                            '10%',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff5B6776),
                                              fontFamily: 'Inter',
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.sp),
                                      LinearPercentIndicator(
                                        padding: EdgeInsets.zero,
                                        barRadius: const Radius.circular(10),
                                        animation: true,
                                        lineHeight: 12,
                                        animationDuration: 2000,
                                        percent: 0.9,
                                        center: const Text(""),
                                        linearStrokeCap: LinearStrokeCap.roundAll,
                                        progressColor: const Color(0xff00AE9A),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  constraints: const BoxConstraints(minHeight: 130),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.fromLTRB(24, 18, 24, 18),
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [

                                          Row(
                                            children: [
                                              Container(
                                                height:
                                                getProportionateScreenHeight(40),
                                                width: getProportionateScreenWidth(40),
                                                decoration: const BoxDecoration(
                                                    color:  Color(0xffF4F6F7),
                                                    shape: BoxShape.circle
                                                ),
                                                child: Center(child: Image.asset(Assets.saving, height: getProportionateScreenHeight(18), width: getProportionateScreenWidth(18),)),
                                              ),

                                              Text(
                                                'Saving for Travel',
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color(0xff2B2D33),
                                                  fontFamily: 'Inter',
                                                ),
                                              ),


                                            ],
                                          )
                                        ],
                                      ),

                                      const SizedBox(height: 10,),

                                      Align(
                                        alignment: Alignment.topLeft,
                                        child:
                                        Text(
                                          'Last paid on August 28 2023',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff79808A),
                                            fontFamily: 'Inter',
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15.sp),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'SAR 10000 / ',
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xff00AE9A),
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                              Text(
                                                '20000',
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color(0xffB8B6F7),
                                                  fontFamily: 'Inter',
                                                ),
                                              ),
                                            ],
                                          ),


                                          Text(
                                            '50%',
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff5B6776),
                                              fontFamily: 'Inter',
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.sp),
                                      LinearPercentIndicator(
                                        padding: EdgeInsets.zero,
                                        barRadius: const Radius.circular(10),
                                        animation: true,
                                        lineHeight: 12,
                                        animationDuration: 2000,
                                        percent: 0.5,
                                        center: const Text(""),
                                        linearStrokeCap: LinearStrokeCap.roundAll,
                                        progressColor: const Color(0xff00AE9A),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                        const Center(
                          child: Text("Monthly"),
                        ),
                        const Center(
                          child: Text('Yearly'),
                        ),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}