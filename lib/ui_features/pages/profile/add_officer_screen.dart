import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/ui_features/pages/profile/list_officer_screen.dart';
import 'package:presence_app/ui_features/widgets/appbar/appbar_custom.dart';
import 'package:presence_app/ui_features/widgets/buttons/button_primary.dart';
import 'package:presence_app/ui_features/widgets/input/input_text.dart';

class AddOfficerScreen extends StatelessWidget {
  const AddOfficerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: 'UPDATE PASSWORD',
        onTap: backScreen,
        action: GestureDetector(
          onTap: () => nextScreen(const ListOfficerScreen()),
          child: const Icon(Icons.list),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            const InputTextField(hintText: 'Nama'),
            verticalSpace(15),
            const InputTextField(hintText: 'Email'),
            verticalSpace(15),
            const InputTextField(hintText: 'Password'),
            verticalSpace(30),
            ButtonPrimary(text: 'Add', ontap: () {})
          ],
        ),
      ),
    );
  }
}
