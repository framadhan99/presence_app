import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/ui_features/widgets/appbar/appbar_custom.dart';
import 'package:presence_app/ui_features/widgets/buttons/button_primary.dart';
import 'package:presence_app/ui_features/widgets/img/img_avatar.dart';
import 'package:presence_app/ui_features/widgets/input/input_text.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(
        title: 'UPDATE PROFILE',
        onTap: backScreen,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          children: [
            const InputTextField(
              hintText: 'Nama',
            ),
            verticalSpace(15),
            const InputTextField(
              hintText: 'Email',
            ),
            verticalSpace(20),
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AssetColor.blueLight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const ImageAvatar(
                        height: 50,
                        width: 50,
                        image: 'assets/images/avatar.png',
                      ),
                      verticalSpace(5),
                      Text(
                        'Delete',
                        style: AssetStyle.textPrimary.copyWith(
                          fontSize: 10,
                          color: AssetColor.blue,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Choose file',
                        style: AssetStyle.textPrimary.copyWith(
                          fontSize: 12,
                          color: AssetColor.blue,
                        ),
                      ),
                      horizontalSpace(5),
                      const Icon(
                        Icons.camera_alt,
                        color: AssetColor.blue,
                        size: 16,
                      )
                    ],
                  )
                ],
              ),
            ),
            verticalSpace(30),
            ButtonPrimary(
              height: 30,
              text: 'Update',
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
