import 'package:flutter/material.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/config/ui_helper.dart';
import 'package:presence_app/ui_features/widgets/appbar/appbar_custom.dart';
import 'package:presence_app/ui_features/widgets/buttons/button_primary.dart';
import 'package:presence_app/ui_features/widgets/input/input_login.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(
        title: 'NEW PASSWORD',
        onTap: backScreen,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InputLoginTextField(tile: 'Email'),
            verticalSpace(30),
            ButtonPrimary(
              width: 170,
              text: 'Reset Password',
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
