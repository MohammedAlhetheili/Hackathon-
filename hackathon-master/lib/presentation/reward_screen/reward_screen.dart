import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:hackathon/presentation/dashboard/dashboard_screen.dart';
import 'package:hackathon/presentation/financial_report/financial_report.dart';
import 'package:hackathon/presentation/invest_screen/invest_screen.dart';
import 'package:hackathon/presentation/portfolio/portfolio_screen/portfolio_screen.dart';
import 'package:hackathon/presentation/reward_screen/widget/service_name.dart';
import 'package:hackathon/presentation/subscription_plan/subscription_plan.dart';
import 'package:hackathon/presentation/video_viewer_screen/video_viewer.dart';
import 'package:hackathon/res/assets.dart';

import '../navbar/navbar.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25).r,
          child: IconButton(
            onPressed: () {
             exit(0);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        centerTitle: true,
        title:  Text(
          'Rewards',
          style: TextStyle(
              color: const Color(0xffB4B9BF),
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
              fontFamily: 'Inter'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 20).r,
        child: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ServiceNameWidget(icon: Assets.service, name: 'Services', Tab: () {
                Get.to(const VideoViewerScreen());

              },),
              ServiceNameWidget(icon: Assets.delivery, name: 'Free Delivery', Tab: () {
                Get.to(const VideoViewerScreen());
              },),
            ]),

            const SizedBox(height: 24,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ServiceNameWidget(icon: Assets.discount, name: 'Discount', Tab: () {     Get.to(const VideoViewerScreen()); },),
              ServiceNameWidget(icon: Assets.discount_2,name: 'Discount', Tab: () {   Get.to(const VideoViewerScreen()); },),
            ]),
            const SizedBox(height: 24,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ServiceNameWidget(icon: Assets.noun, name: 'Free Delivery', Tab: () {    Get.to(const VideoViewerScreen());},),
              ServiceNameWidget(icon: Assets.ubber, name: 'Discount', Tab: () {    Get.to(const VideoViewerScreen());},),
            ]),
            const SizedBox(height: 24,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ServiceNameWidget(icon: Assets.offer, name: 'Offers', Tab: () {    Get.to(const VideoViewerScreen());},),
              ServiceNameWidget(icon: Assets.qitaf, name: 'Qitaf', Tab: () {     Get.to(const VideoViewerScreen());},),
            ]),
            const SizedBox(height: 24,),


          ],
        ),
      ),
    );
  }
}
