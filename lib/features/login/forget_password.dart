// features/login/forget_password.dart
import 'package:bookia/core/custom_widget/custom_button.dart';
import 'package:bookia/core/custom_widget/end_page_spacer.dart';
import 'package:bookia/core/custom_widget/textfieldflorm_widget.dart';
import 'package:bookia/core/functions/newNavigation.dart';
import 'package:bookia/core/functions/text_title.dart';
import 'package:bookia/core/utils/colos.dart';
import 'package:bookia/features/login/login_screen.dart';
import 'package:bookia/features/login/send_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /////////////////////////////////////////////////////////////title
            Text(
              "Forgot Password?",
              style: gettitleTextStyle30(),
            ),
            Gap(10),
            Text(
              "Don't worry! It occurs. Please enter the email address linked with your account.",
              style: gettitleTextStyle18(color: AppColor.grayColor),
            ),

            ////////////////////////////////////////////////////////////email
            Gap(30),
            TextfieldflormWidget(
              isobsecure: false,
              hinttext: "Enter your email",
            ),

            ///////////////////////////////////////////////////////////send code button
            Gap(40),
            CustomButton(
              text: "Send Code",
              textcolor: Colors.white,
              onPressed: () {
                pushTo(context, SendCodeScreen());
              },
            ),

            /////////////////////////////////////////////////////remember password
            Spacer(),
            EndPageTitle(
              text: "Remember Password?",
              btntext: "Login",
              pushPage: LogInScreen(),
            ),
            Gap(26),
          ],
        ),
      ),
    );
  }
}
