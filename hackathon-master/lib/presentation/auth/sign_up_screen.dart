import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/presentation/auth/login_screen.dart';
import 'package:hackathon/presentation/widgets/app_text_field.dart';
import 'package:hackathon/presentation/widgets/primary_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AutoSizeText(
            'You already have an account?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff23262F),
              fontFamily: 'Inter',
            ),
            maxLines: 1,
            textAlign: TextAlign.left,
            minFontSize: 10,
            maxFontSize: 24,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: const AutoSizeText(
              ' Sign In',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff00AE9A),
                fontFamily: 'Inter',
              ),
              maxLines: 1,
              textAlign: TextAlign.left,
              minFontSize: 10,
              maxFontSize: 24,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 84),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeText(
                'Create a  account',
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
              const AutoSizeText(
                'Create an account to continue',
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
              const SizedBox(height: 40),
              const AppTextField(
                backgroundColor: Color(0xffF4F5F6),
                borderRadius: 12,
                hint: 'Full Name',
                label: 'Full Name',
                textFieldHeight: 49,
                borderColor: Color(0xff00AE9A),
                hintStyle: TextStyle(
                  fontFamily: 'Inter',
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: AppTextField(
                  backgroundColor: Color(0xffF4F5F6),
                  borderRadius: 12,
                  hint: 'Email',
                  label: 'Email',
                  textFieldHeight: 49,
                  borderColor: Color(0xff00AE9A),
                  inputType: TextInputType.emailAddress,
                  hintStyle: TextStyle(
                    fontFamily: 'Inter',
                  ),
                ),
              ),
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
              const AppTextField(
                backgroundColor: Color(0xffF4F5F6),
                borderRadius: 12,
                hint: 'Password',
                label: 'Password',
                obscureText: true,
                textFieldHeight: 49,
                borderColor: Color(0xff00AE9A),
                postfix: Icon(
                    Icons.visibility_off_outlined
                ),
                hintStyle: TextStyle(
                  fontFamily: 'Inter',
                ),
              ),
              PrimaryButton(

                fillColor: const Color(0xff00AE9A),
                padding: const EdgeInsets.symmetric(vertical: 40),
                radius: BorderRadius.circular(16),
                height: 56,
                child: const Text(
                    'Sign Up'
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
