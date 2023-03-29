import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/ui_features/pages/authentication/forgot_pass_screen.dart';
import 'package:presence_app/ui_features/widgets/buttons/button_primary.dart';
import 'package:presence_app/ui_features/widgets/input/input_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log in',
              style: AssetStyle.textTitle
                  .copyWith(fontSize: 30, color: AssetColor.blueDrak),
            ),
            verticalSpace(30),
            const InputLoginTextField(
              tile: 'Username',
            ),
            verticalSpace(20),
            const InputLoginTextField(
              tile: 'Password',
            ),
            verticalSpace(8),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => nextScreen(const ForgotPasswordScreen()),
                child: Text(
                  'Forgot Password',
                  style: AssetStyle.textPrimary.copyWith(
                    color: AssetColor.blue,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            verticalSpace(40),
            Align(
              alignment: Alignment.center,
              child: ButtonPrimary(
                color: AssetColor.blue,
                text: 'Log in',
                ontap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
