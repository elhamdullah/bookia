// features/register/register_Screen.dart
import 'package:bookia/core/custom_widget/custom_button.dart';
import 'package:bookia/core/custom_widget/end_page_spacer.dart';
import 'package:bookia/core/custom_widget/textfieldflorm_widget.dart';
import 'package:bookia/core/functions/text_title.dart';
import 'package:bookia/core/utils/colos.dart';
import 'package:bookia/features/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello! Register to get\n started',
              style: gettitleTextStyle30(),
            ),
            Gap(40),
            ////////////////////////////////////////////////////////username
            TextfieldflormWidget(
              isobsecure: false,
              hinttext: "Username",
              fontsize: 15,
            ),
            /////////////////////////////////////////////////////////email
            Gap(12),
            TextfieldflormWidget(
              isobsecure: false,
              hinttext: "Email",
              fontsize: 15,
            ),
            ///////////////////////////////////////////////////////password
            Gap(12),
            TextfieldflormWidget(
              isobsecure: true,
              hinttext: "Password",
              fontsize: 15,
            ),
            ///////////////////////////////////////////////////////confirm password
            Gap(12),
            TextfieldflormWidget(
              isobsecure: true,
              hinttext: "Confirm password",
              fontsize: 15,
            ),

            ///////////////////////////////////////////////////register button
            Gap(30),
            CustomButton(
              text: "Register",
              textcolor: Colors.white,
              onPressed: () {},
            ),

            /////////////////////////////////////////////////////already have account
            Spacer(),

            EndPageTitle(
              text: "Already have an account?",
              btntext: "Login Now",
              pushPage: LogInScreen(),
            ),
            Gap(26),
          ],
        ),
      ),
    );
  }
}
