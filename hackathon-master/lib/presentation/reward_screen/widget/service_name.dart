import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon/core/utils/size_config.dart';

class ServiceNameWidget extends StatefulWidget {
  final String icon;
  final String name;
  final VoidCallback Tab;
  const ServiceNameWidget({super.key, required this.icon, required this.name,  required this.Tab});

  @override
  State<ServiceNameWidget> createState() => _ServiceNameWidgetState();
}

class _ServiceNameWidgetState extends State<ServiceNameWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: widget.Tab,
      child:
      Container(
        height: getProportionateScreenHeight(149),
        width: getProportionateScreenWidth(145),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           ClipRect(
               child: Image.asset(widget.icon, height: getProportionateScreenHeight(85), width: getProportionateScreenWidth(85),)),
        SizedBox(height: 4.h,),
          AutoSizeText(widget.name,
          style:  TextStyle(
            fontSize: 16.sp,
            color: const Color(0xff000000),
            fontWeight: FontWeight.w500,
              fontFamily: 'Inter'
          ),),
        ],),
      ),
    );
  }
}
