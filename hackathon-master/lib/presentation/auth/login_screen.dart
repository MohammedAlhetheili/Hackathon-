import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hackathon/core/utils/size_config.dart';
import 'package:hackathon/presentation/navbar/navbar.dart';
import 'package:hackathon/presentation/reward_screen/reward_screen.dart';
import 'package:hackathon/presentation/widgets/app_text_field.dart';
import 'package:hackathon/presentation/widgets/primary_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final bool _obscureText = true;
  @override

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 189.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeText(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff23262F),
                  fontFamily: 'Inter',
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
                minFontSize: 10,
                maxFontSize: 24,
              ),
              SizedBox(height: getProportionateScreenHeight(8)),
              const AutoSizeText(
                'Sign in to your account',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff777E90),
                  fontFamily: 'Inter',
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
                minFontSize: 10,
                maxFontSize: 24,
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  counter: const SizedBox(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color(0xffF4F5F6),
                  filled: true,
                ),
                initialCountryCode: 'SA',
                dropdownIconPosition: IconPosition.trailing,
                flagsButtonPadding: const EdgeInsets.only(left: 16),
                style: const TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.white,
                ),
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              SizedBox(height: getProportionateScreenHeight(8)),
              AppTextField(
                enabled: true,
                backgroundColor: const Color(0xffF4F5F6),
                borderRadius: 12,
                hint: 'Password',
                label: 'Password',
                textFieldHeight: 49.sp,
                borderColor: const Color(0xff00AE9A),
                postfix: Icon(
                  _obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
                hintStyle: const TextStyle(
                  fontFamily: 'Inter',
                ),
                obscureTextInitially: true,
              ),
              PrimaryButton(
                fillColor: const Color(0xff00AE9A),
                padding: EdgeInsets.symmetric(vertical: 30.sp),
                radius: BorderRadius.circular(16),
                height: 56,
                child: const Text(
                  'Sign In'
                ),
                onPressed: (){

                  // Get.offAll(NavBar());

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const NavBar()),
                  );
                },
              ),
              const Center(
                child: AutoSizeText(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff777E90),
                    fontFamily: 'Inter',
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  minFontSize: 10,
                  maxFontSize: 24,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
