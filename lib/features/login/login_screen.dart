// features/login/login_screen.dart
import 'package:bookia/core/custom_widget/custom_button.dart';
import 'package:bookia/core/custom_widget/end_page_spacer.dart';
import 'package:bookia/core/custom_widget/social_login.dart';
import 'package:bookia/core/custom_widget/textfieldflorm_widget.dart';
import 'package:bookia/core/functions/newNavigation.dart';
import 'package:bookia/core/functions/text_title.dart';
import 'package:bookia/core/utils/colos.dart';
import 'package:bookia/core/utils/icons.dart';
import 'package:bookia/features/login/forget_password.dart';
import 'package:bookia/features/register/register_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Text(
              'Welcome back! Glad \nto see you, Again!',
              style: gettitleTextStyle30(),
            ),
            Gap(40),
            ////////////////////////////////////////////////////////email
            TextfieldflormWidget(
              isobsecure: false,
              hinttext: 'Enter your email',
              fontsize: 15,
            ),
            Gap(15),

            ////////////////////////////////////////////////////////password
            TextfieldflormWidget(
              isobsecure: true,
              hinttext: 'Enter your password',
              fontsize: 15,
              suffixIconHeight: 50,
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: SvgPicture.asset(
                  AppIcons.eyeSvg,
                ),
              ),
            ),

            ///////////////////////////////////////////////////////forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    pushTo(context, ForgetPassword());
                  },
                  child: Text(
                    'Forget Password?',
                    style: gettitleTextStyle14(color: AppColor.darkGrayColor),
                  ),
                ),
              ],
            ),

            ////////////////////////////////////////////////////////login button
            Gap(20),
            CustomButton(
              text: "Login",
              textcolor: Colors.white,
              fontsize: 15,
              onPressed: () {},
            ),

            //////////////////////////////////////////////////////////divider
            Gap(34),
            Row(
              children: [
                const Expanded(
                    child: Divider(
                  color: AppColor.lightGrayColor,
                )),
                Text(
                  "     Or Login with    ",
                  style: gettitleTextStyle14(),
                ),
                const Expanded(
                    child: Divider(
                  color: AppColor.lightGrayColor,
                )),
              ],
            ),

            ////////////////////////////////////////////////////////social login
            Gap(40),
            Row(
              children: [
                SocialLogin(
                  image: AppIcons.facebookSvg,
                ),
                Gap(8),
                SocialLogin(
                  image: AppIcons.googleSvg,
                ),
                Gap(8),
                SocialLogin(
                  image: AppIcons.appleSvg,
                ),
              ],
            ),

            /////////////////////////////////////////////////////dont have account
            Spacer(),
            EndPageTitle(
              text: "Don’t have an account?",
              btntext: "Register Now",
              pushPage: RegisterScreen(),
            ),
            Gap(26),
          ],
        ),
      ),
    );
  }
}
