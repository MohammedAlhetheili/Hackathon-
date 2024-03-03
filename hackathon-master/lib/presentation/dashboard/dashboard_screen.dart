import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/presentation/financial_report/financial_report.dart';
import 'package:hackathon/res/assets.dart';

import '../../res/color.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.btnColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.r),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
        
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Assets.avtar,
                    height: getProportionateScreenHeight(50),
                  ),
                  Column(
                    children: [
                      AutoSizeText(
                        'Welcome.,',
                        style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter'),
                      ),
                      AutoSizeText(
                        'saud alsaif',
                        style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter'),
                      ),
                    ],
                  ),
                  Image.asset(
                    Assets.notify,
                    height: getProportionateScreenHeight(50),
                  ),
                ],
              ),
        
              SizedBox(height: getProportionateScreenHeight(30),),
        
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: getProportionateScreenWidth(254),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x1E9095AB),
                              blurRadius: 20.r,
                              offset: const Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child:
        
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
        
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: getProportionateScreenHeight(40),
                                        width: getProportionateScreenWidth(40),
                                        decoration: const BoxDecoration(
                                            color: Color(0xffF4F6F7),
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Image.asset(Assets.icon2, height: 20,)),
                                      ),
        
                                       SizedBox(
                                        width: getProportionateScreenWidth(130),
                                      ),
        
                                      const Icon(
                                        Icons.more_vert,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ],
                                  ),
        
                                  SizedBox(height: getProportionateScreenHeight(25),),
        
                                  Text(
                                    'Your investments',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff001733),
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(10),
                                  ),
        
        
                                  Row(
        
                                    children: [
                                      Text(
                                        '632.000',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff25282C),
                                          fontFamily: 'Inter',
                                        ),
                                      ),
        
                                      SizedBox(width: getProportionateScreenWidth(100),),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xffE5FFF1),
                                            borderRadius: BorderRadius.circular(15)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 6),
                                          child: Center(
                                              child: Text(
                                                '+1,29%',
                                                style: TextStyle(
                                                    color: const Color(0xff00AE4E),
                                                    fontSize: 10.sp,
                                                    fontFamily: 'Inter'),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
        
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
                                  ),
                                ],
                              ),
                            ),
        
        
        
                          ],
                        )),
        
                    SizedBox(width: getProportionateScreenWidth(20),),
        
                    Container(
                        width: getProportionateScreenWidth(254),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x1E9095AB),
                              blurRadius: 20.r,
                              offset: const Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child:
        
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
        
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: getProportionateScreenHeight(40),
                                        width: getProportionateScreenWidth(40),
                                        decoration: const BoxDecoration(
                                            color: Color(0xffF4F6F7),
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Image.asset(Assets.icon2, height: 20,)),
                                      ),
        
                                      SizedBox(
                                        width: getProportionateScreenWidth(130),
                                      ),
        
                                      const Icon(
                                        Icons.more_vert,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ],
                                  ),
        
                                  SizedBox(height: getProportionateScreenHeight(25),),
        
                                  Text(
                                    'Your investments',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff001733),
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(10),
                                  ),
        
        
                                  Row(
        
                                    children: [
                                      Text(
                                        '632.000',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff25282C),
                                          fontFamily: 'Inter',
                                        ),
                                      ),
                                      SizedBox(width: getProportionateScreenWidth(100),),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: const Color(0xffE5FFF1),
                                              borderRadius: BorderRadius.circular(15)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 6),
                                            child: Text(
                                              '+1,29%',
                                              style: TextStyle(
                                                  color: const Color(0xff00AE4E),
                                                  fontSize: 10.sp,
                                                  fontFamily: 'Inter'),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
        
                                  SizedBox(
                                    height: getProportionateScreenHeight(20),
                                  ),
                                ],
                              ),
                            ),
        
        
        
                          ],
                        )),
                  ],
                ),
              ),
        
        
              SizedBox(height: getProportionateScreenHeight(30),),
        
        
              Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x1E9095AB),
                        blurRadius: 20.r,
                        offset: const Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child:
        
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
        
                            SizedBox(
                              height: getProportionateScreenHeight(20),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: getProportionateScreenHeight(40),
                                  width: getProportionateScreenWidth(40),
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4F6F7),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Image.asset(Assets.icon5, height: 20,)),
                                ),
        
                                SizedBox(
                                  width: getProportionateScreenWidth(20),
                                ),
        
                                Text(
                                  'Your investments',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff001733),
                                    fontFamily: 'Inter',
                                  ),
                                ),
        
        
                              ],
                            ),
        
        
                            SizedBox(
                              height: getProportionateScreenHeight(30),
                            ),
        
        
                            Row(
        
                              children: [
                                Text(
                                  'SAR 14,688.12',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff25282C),
                                    fontFamily: 'Inter',
                                  ),
                                ),
        
                                SizedBox(width: getProportionateScreenWidth(120),),
        
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xffE5FFF1),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 6),
                                    child: Center(
                                        child: Text(
                                          '+1,29%',
                                          style: TextStyle(
                                              color: const Color(0xff00AE4E),
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter'),
                                        )),
                                  ),
                                ),
                              ],
                            ),
        
                            SizedBox(
                              height: getProportionateScreenHeight(20),
                            ),
                          ],
                        ),
                      ),
        
                    ],
                  )),
              SizedBox(height: getProportionateScreenHeight(30),),
        
              Container(
                width: Get.width,
              
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x1E9095AB),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
        
                ),
        
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.r),
                  child: Column(children: [
        
                 SizedBox(height: getProportionateScreenHeight(20),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(children: [
        
                        Image.asset(Assets.icon6,height: 20,),
        
                        const SizedBox(width: 4,),
        
                        AutoSizeText(
                          'Portfolio Report',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff262329),
                            fontFamily: 'Inter',
                          ),
                        ),
        
                      ],),
        
                      InkWell(
                        onTap: (){
                          Get.to(const FinancialScreen());
                        },
                        child: Row(children: [

                          AutoSizeText(
                            'Full Report',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff686868),
                              fontFamily: 'Inter',
                            ),
                          ),

                          const SizedBox(width: 4,),

                          Image.asset(Assets.icon7, height: 20,),

                        ],),
                      )
                    ],),

                    SizedBox(height: getProportionateScreenHeight(10),),
        
        
                    SvgPicture.asset(
                      "assets/images/chart.svg",
                      fit: BoxFit.contain,

                    ),
        
                  ],),
                ),
              ),

              SizedBox(height: getProportionateScreenHeight(30),),
        
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
