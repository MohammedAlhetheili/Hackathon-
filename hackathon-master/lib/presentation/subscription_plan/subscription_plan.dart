import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/res/assets.dart';
import 'package:hackathon/res/color.dart';
import 'package:hackathon/res/primary_button.dart';

import '../navbar/navbar.dart';

class SubscriptionPlanScreen extends StatefulWidget {
  const SubscriptionPlanScreen({super.key});

  @override
  State<SubscriptionPlanScreen> createState() => _SubscriptionPlanScreenState();
}

class _SubscriptionPlanScreenState extends State<SubscriptionPlanScreen> {
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Assets.investGraph),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.sp),
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      AutoSizeText(
                        'Goal target',
                        style: TextStyle(
                            color: const Color(0xff8D90A1),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            fontFamily: 'Inter'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.r),
                            child: Image.asset(
                              Assets.coin,
                              height: 18,
                              width: 18,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(2),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(90),
                            child: TextFormField(
                              controller: amountController,
                              autofocus: false,
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.center,
                              showCursor: true,
                              keyboardType: TextInputType.number,
                              enableSuggestions: true,
                              decoration: const InputDecoration(
                                hintText: '100,0000',
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                isDense: true,
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  height: 20 / 20),
                            ),
                          ),
                          AutoSizeText(
                            'SAR',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20.sp,
                                fontFamily: 'Inter'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
        
            const SizedBox(height: 20,),
        
        
        
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.sp),
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      AutoSizeText(
                        'Monthly Amount',
                        style: TextStyle(
                            color: const Color(0xff1E1F4B),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            fontFamily: 'Inter'),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),
        
        
                      AutoSizeText(
                        'SAR 120',
                        style: TextStyle(
                            color: AppColor.btnColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 32.sp,
                            fontFamily: 'Inter'),
                      ),
        
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                        child: Image.asset(Assets.scroll),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
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
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(30),
              vertical: getProportionateScreenHeight(20)),
          child: PrimaryButton(
            radius: BorderRadius.circular(20),
            fillColor: AppColor.btnColor,
            onPressed: () {
              Get.offAll(const NavBar());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.mask,
                  height: 18.h,
                  width: 18.h,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Active the Streak',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
