import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/compnents/button/main_btn.dart';
import 'package:nectar_ui/compnents/inputs/text_input.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extenstions/navigation.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/home/page/home_screen.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset(AppAssets.carrotSvg)],
                  ),
                  SizedBox(height: 99),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkBlack,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Enter your credentials to continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(height: 40),
                  customTextFormField(labelText: 'Username'),
                  SizedBox(height: 30),
                  customTextFormField(labelText: 'Email'),
                  SizedBox(height: 30),
                  customTextFormField(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: obscureText
                          ? SvgPicture.asset(AppAssets.eyesvg)
                          : Icon(
                              Icons.remove_red_eye,
                              color: AppColors.primaryColor,
                            ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'By continuing you agree to our ',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to Terms of Service page
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero, // Removes extra padding
                          minimumSize: Size(
                            0,
                            0,
                          ), // Avoids button height issues
                        ),
                        child: Text(
                          'Terms of Service',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        ' and ',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to Privacy Policy page
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size(0, 0),
                        ),
                        child: Text(
                          'Privacy Policy.',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),
                  mainBtn(
                    text: 'Sign Up',
                    onPressed: () {
                      pushwithReplacment(context, HomeScreen());
                    },
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
