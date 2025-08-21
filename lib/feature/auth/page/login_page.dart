import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/compnents/button/bottom_bar.dart';
import 'package:nectar_ui/compnents/button/main_btn.dart';
import 'package:nectar_ui/compnents/inputs/text_input.dart';
import 'package:nectar_ui/core/constants/app_assets.dart';
import 'package:nectar_ui/core/extenstions/navigation.dart';
import 'package:nectar_ui/core/utils/app_colors.dart';
import 'package:nectar_ui/feature/auth/page/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset(AppAssets.carrotSvg)],
                  ),
                  SizedBox(height: 99),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkBlack,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Enter your emails and password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(height: 40),

                  SizedBox(height: 10),
                  customTextFormField(
                    labelText: 'Email',
                    validator: (value) {
                      if (value!.isEmpty) return 'Please Enter your Email';
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  SizedBox(height: 10),
                  customTextFormField(
                    labelText: 'Password',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Password';
                      } else if (value.length < 6) {
                        return 'Password cannot  be less than 6';
                      }
                      return null;
                    },
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.darkBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  mainBtn(
                    text: 'Log In',
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        pushwithReplacment(context, const MainPage());
                      }
                    },
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {
                          pushwithReplacment(context, const SignupPage());
                        },
                        child: Text(
                          'Sign up',
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
