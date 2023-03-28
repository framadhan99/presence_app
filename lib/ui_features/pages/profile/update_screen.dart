import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/ui_features/widgets/appbar/appbar_custom.dart';
import 'package:presence_app/ui_features/widgets/buttons/button_primary.dart';
import 'package:presence_app/ui_features/widgets/input/input_text.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(
        title: 'UPDATE PASSWORD',
        onTap: backScreen,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            const InputTextField(hintText: 'Current Password'),
            verticalSpace(15),
            const InputTextField(hintText: 'New Password'),
            verticalSpace(15),
            const InputTextField(hintText: 'Confrim Password'),
            verticalSpace(30),
            ButtonPrimary(text: 'Update', ontap: () {})
          ],
        ),
      ),
    );
  }
}
