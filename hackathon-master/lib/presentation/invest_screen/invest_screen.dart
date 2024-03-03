import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/presentation/navbar/navbar.dart';
import 'package:hackathon/presentation/subscription_plan/subscription_plan.dart';
import 'package:hackathon/res/color.dart';
import 'package:hackathon/res/primary_button.dart';

class InvestScreen extends StatefulWidget {
  const InvestScreen({super.key});

  @override
  State<InvestScreen> createState() => _InvestScreenState();
}

class _InvestScreenState extends State<InvestScreen> {
  TextEditingController amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Container(
              width: Get.width,
              height: getProportionateScreenHeight(160),
              color: AppColor.btnColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    const Text(
                      'Invest',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontFamily: 'Inter'),
                    ),
                     SizedBox(
                      width: getProportionateScreenWidth(20),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: getProportionateScreenHeight(120),
              child: Container(
                width: Get.width,
                height: Get.height,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  color: Colors.white,
                ),

                child: Column(children: [

                  const SizedBox(height: 10,),
                  Container(
                    width: 43,
                    height: 3,
                    color: const Color(0xff99fa2ab).withOpacity(0.3),

                  ),

                  const SizedBox(height: 15,),
                  const Text(
                    'Enter the amount',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: 'Inter'),
                  ),
                  const SizedBox(height: 10,),

                   const Text(
                    'The amount added here will be in the wallet',
                    style: TextStyle(
                        color:  Color(0xff99fa2ab),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'Inter'),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: amountController,
                    autofocus: false,
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.center,

                    showCursor: true,
                    keyboardType: TextInputType.number,
                    enableSuggestions: true,
                    decoration: const InputDecoration(

                      hintText: 'Enter amount',
                      hintStyle: TextStyle(
                        fontSize: 16
                      ),
                      isDense: true,

                      border: InputBorder.none,
                    ),
                    style: const TextStyle(
                      fontSize: 44,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      height:  50 / 50
                    ),
                  ),



                ],),
              ),
            )
          ],
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
          child: PrimaryButton(
            radius: BorderRadius.circular(20),
            fillColor: AppColor.btnColor,
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>const SubscriptionPlanScreen()));
            },
            child:  Text('Invest Amount', style: TextStyle(fontFamily: 'Inter' , fontSize: 16.sp, fontWeight: FontWeight.w700), ),),
        ),

      ),
    );
  }
}
