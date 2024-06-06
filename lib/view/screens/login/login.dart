import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/colors/color.dart';
import '../../../core/theme/font.dart';
import '../../../utils/size.dart';
import '../../../utils/white_space.dart';
import '../../widgets/button.dart';
import 'widgets/input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: SizedBox(
            height: percentHeight(context: context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', height: 87),
                whiteSpace(height: 120),
                SizedBox(
                  width: percentWidth(context: context),
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back',
                        style: B16,
                      ),
                      Text(
                        'Please enter your email and password to login',
                        style: R10.copyWith(color: black.withOpacity(0.5)),
                      )
                    ],
                  ),
                ),
                whiteSpace(height: 24),
                AppInput(
                  controller: _email,
                  hint: 'Email address',
                  isPass: false,
                ),
                whiteSpace(height: 26),
                AppInput(
                  controller: _password,
                  hint: 'Password',
                  isPass: true,
                ),
                whiteSpace(height: 44),
                AppButton(
                  name: 'Login',
                  fn: () {
                    Get.toNamed('/main');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
