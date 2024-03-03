import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/presentation/portfolio/education_level/education_level.dart';
import 'package:hackathon/res/assets.dart';
import 'package:hackathon/res/color.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed functionality here
        },
        backgroundColor: const Color(0xff00AE9A),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25).r,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.btnColor,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Portfolios',
          style: TextStyle(
              color: const Color(0xffB4B9BF),
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              fontFamily: 'Inter'),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.r),
            child: Container(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: getProportionateScreenHeight(60)),
                            child: const Divider(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20,
                                top: getProportionateScreenHeight(20)),
                            child: Row(
                              children: [
                                Container(
                                  height: getProportionateScreenHeight(40),
                                  width: getProportionateScreenWidth(40),
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4F6F7),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Image.asset(Assets.suku, height: 10,)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Sukuk Portfolio',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff2B2D33),
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20.0)),
                              child: SizedBox(
                                  height: getProportionateScreenHeight(90),
                                  child: Image.asset(
                                    Assets.imageStyle,
                                  )),
                            ),
                          ),
                          Positioned(
                              right: getProportionateScreenWidth(10),
                              top: getProportionateScreenHeight(10),
                              child: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(20),
                          top: getProportionateScreenHeight(10)),
                      child: Text(
                        'Portfolio Value',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff001733),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.sp,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SAR 28,204.56',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff25282C),
                              fontFamily: 'Inter',
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffE5FFF1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              child: Center(
                                  child: Text(
                                '+13,51%',
                                style: TextStyle(
                                    color: const Color(0xff00AE4E),
                                    fontSize: 10.sp,
                                    fontFamily: 'Inter'),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.r),
            child: Container(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: getProportionateScreenHeight(60)),
                            child: const Divider(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20,
                                top: getProportionateScreenHeight(20)),
                            child: Row(
                              children: [
                                Container(
                                  height: getProportionateScreenHeight(40),
                                  width: getProportionateScreenWidth(40),
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4F6F7),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Image.asset(Assets.arf,height: 20,)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Alrajhi Portfolio',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff2B2D33),
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20.0)),
                              child: SizedBox(
                                  height: getProportionateScreenHeight(90),
                                  child: Image.asset(
                                    Assets.imageStyle,
                                  )),
                            ),
                          ),
                          Positioned(
                              right: getProportionateScreenWidth(10),
                              top: getProportionateScreenHeight(10),
                              child: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(20),
                          top: getProportionateScreenHeight(10)),
                      child: Text(
                        'Portfolio Value',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff001733),
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.sp,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SAR 13,520.34',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff25282C),
                              fontFamily: 'Inter',
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffE5FFF1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 6),
                              child: Center(
                                  child: Text(
                                '+7,29%',
                                style: TextStyle(
                                    color: const Color(0xff00AE4E),
                                    fontSize: 10.sp,
                                    fontFamily: 'Inter'),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.r),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(20),
              padding: EdgeInsets.zero,
              color: const Color(0xff07C57D),
              dashPattern: [6, 4, 6, 4],
              child: Container(
                height: 166.sp,
                width: Get.width,
                decoration: BoxDecoration(
                  color: const Color(0xff07C57D).withOpacity(0.02),
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(
                  //   color: AppColor.primaryColor,
                  // )
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EducationLevelScreen()),
                    );

                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Color(0xff07C57D),
                        size: 30,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Create Portfolio',
                        style: TextStyle(
                            color: const Color(0xff07C57D),
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            fontFamily: 'Inter'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
