import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/res/color.dart';

class OrderItem extends StatelessWidget {
  final String description;
  final bool free;
  const OrderItem({super.key, required this.description, this.free = false});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(children: [
      Container(
        height: getProportionateScreenHeight(22) ,
        width: getProportionateScreenWidth(22),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffD8D8D8),
        ),
        child: const Icon(Icons.check, color: AppColor.btnColor, size: 15,) ,
      ),
      const SizedBox(width: 10,),

      if(free)
      AutoSizeText(
        'Free',
        style: TextStyle(
            color: AppColor.btnColor,
            fontWeight: FontWeight.w400,
            fontSize: 15.sp,
            fontFamily: 'Inter'),
      ),

      if(free)
      const SizedBox(width: 5,),
      Expanded(
        child: AutoSizeText(
          description,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
              fontFamily: 'Inter'),
        ),
      ),
    ],);
  }
}
