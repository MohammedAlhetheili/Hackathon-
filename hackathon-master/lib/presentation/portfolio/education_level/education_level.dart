import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/presentation/portfolio/invest_goal/invest_goal_screen.dart';
import 'package:hackathon/presentation/widgets/primary_button.dart';
import 'package:hackathon/res/assets.dart';
import 'package:hackathon/res/color.dart';

class EducationLevelScreen extends StatefulWidget {
  const EducationLevelScreen({super.key});

  @override
  State<EducationLevelScreen> createState() => _EducationLevelScreenState();
}

class _EducationLevelScreenState extends State<EducationLevelScreen> {

  bool click1 = false;
  bool click2 = false;
  bool click3 = false;
  bool click4 = false;
  bool click5 = false;
  bool click6 = false;
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
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
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.r),
          child: Column(

            children: [

            Container(
              height: getProportionateScreenHeight(60),
              width: getProportionateScreenWidth(60),
              decoration: const BoxDecoration(
                  color: Color(0xffEBECF0),
                  shape: BoxShape.circle),
              child: Center(
                  child: Image.asset(Assets.book, height: 30,)),
            ),

              SizedBox(height: 10.h,),


              Text(
                'Level of Education',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff000000),
                  fontFamily: 'Inter',
                ),
              ),

              SizedBox(height: 30.h,),

              Container(
                width: Get.width,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1E9095AB),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: PrimaryButton(
                  splashColor: AppColor.btnColor ,
                  radius: BorderRadius.circular(20),
                  fillColor: Colors.white,
                  onPressed: (){
                    setState(() {
                      click1 = !click1;

                    });
                    Future.delayed(const Duration(milliseconds: 550), () {
                      setState(() {
                        click1 = !click1;
                      });
                    });

                  },
                  child:  Row(
                    children: [
                      SizedBox(width: getProportionateScreenWidth(30),),
                      Text('Primary School', style: TextStyle(fontFamily: 'Inter' , fontSize: 16.sp, fontWeight: FontWeight.w500, color: !click1 ? Colors.black : Colors.white), ),
                    ],
                  ),),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: Get.width,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1E9095AB),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: PrimaryButton(
                  splashColor: AppColor.btnColor ,
                  radius: BorderRadius.circular(20),
                  fillColor: Colors.white,
                  onPressed: (){
                    setState(() {
                      click2 = !click2;

                    });
                    Future.delayed(const Duration(milliseconds: 550), () {
                      setState(() {
                        click2 = !click2;
                      });
                    });

                  },
                  child:  Row(
                    children: [
                      SizedBox(width: getProportionateScreenWidth(30),),
                      Text('Intermediate School', style: TextStyle(fontFamily: 'Inter' , fontSize: 16.sp, fontWeight: FontWeight.w500, color: !click2 ? Colors.black : Colors.white), ),
                    ],
                  ),),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: Get.width,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1E9095AB),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: PrimaryButton(
                  splashColor: AppColor.btnColor ,
                  radius: BorderRadius.circular(20),
                  fillColor: Colors.white,
                  onPressed: (){
                    setState(() {
                      click3 = !click3;

                    });
                    Future.delayed(const Duration(milliseconds: 550), () {
                      setState(() {
                        click3 = !click3;
                      });
                    });

                  },
                  child:  Row(
                    children: [
                      SizedBox(width: getProportionateScreenWidth(30),),
                      Text('High School', style: TextStyle(fontFamily: 'Inter' , fontSize: 16.sp, fontWeight: FontWeight.w500, color: !click3 ? Colors.black : Colors.white), ),
                    ],
                  ),),
              ),
              SizedBox(height: 20.h,),

              Container(
                width: Get.width,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1E9095AB),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: PrimaryButton(
                  splashColor: AppColor.btnColor ,
                  radius: BorderRadius.circular(20),
                  fillColor: Colors.white,
                  onPressed: (){
                    setState(() {
                      click6 = !click6;

                    });
                    Future.delayed(const Duration(milliseconds: 550), () {
                      setState(() {
                        click6 = !click6;
                      });
                    });

                  },
                  child:  Row(
                    children: [
                      SizedBox(width: getProportionateScreenWidth(30),),
                      Text('Diploma Degree', style: TextStyle(fontFamily: 'Inter' , fontSize: 16.sp, fontWeight: FontWeight.w500, color: !click6 ? Colors.black : Colors.white), ),
                    ],
                  ),),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: Get.width,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1E9095AB),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: PrimaryButton(
                  splashColor: AppColor.btnColor ,
                  radius: BorderRadius.circular(20),
                  fillColor: Colors.white,
                  onPressed: (){
                    setState(() {
                      click4 = !click4;

                    });
                    Future.delayed(const Duration(milliseconds: 550), () {
                      setState(() {
                        click4 = !click4;
                      });
                    });

                  },
                  child:  Row(
                    children: [
                      SizedBox(width: getProportionateScreenWidth(30),),
                      Text('Bachelor Degree ', style: TextStyle(fontFamily: 'Inter' , fontSize: 16.sp, fontWeight: FontWeight.w500, color: !click4 ? Colors.black : Colors.white), ),
                    ],
                  ),),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: Get.width,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1E9095AB),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: PrimaryButton(
                  splashColor: AppColor.btnColor ,
                  radius: BorderRadius.circular(20),
                  fillColor: Colors.white,
                  onPressed: (){
                    setState(() {
                      click5 = !click5;

                    });
                    Future.delayed(const Duration(milliseconds: 550), () {
                      setState(() {
                        click5 = !click5;
                      });
                    });

                  },
                  child:  Row(
                    children: [
                      SizedBox(width: getProportionateScreenWidth(30),),
                      Text('Higher Education Degree', style: TextStyle(fontFamily: 'Inter' , fontSize: 16.sp, fontWeight: FontWeight.w500, color: !click5 ? Colors.black : Colors.white), ),
                    ],
                  ),),
              ),


          ],),
        ),
      ),

      bottomNavigationBar:

        Container(
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
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30), vertical: getProportionateScreenHeight(20)),
          child:
          PrimaryButton(
            radius: BorderRadius.circular(15),
            fillColor: AppColor.btnColor,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InvestGoalScreen()),
              );

            },
            child:  Text('Next', style: TextStyle(fontFamily: 'Inter' , fontSize: 16.sp, fontWeight: FontWeight.w700), ),),
        ),

      ),
    );
  }
}
