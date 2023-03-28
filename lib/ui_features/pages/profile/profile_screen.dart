import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/ui_features/widgets/appbar/appbar_custom.dart';
import 'package:presence_app/ui_features/widgets/img/img_avatar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(
        title: 'PROFILE',
        onTap: backScreen,
      ),
      body: Column(
        children: [
          SizedBox(
            width: screenWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(15),
                const ImageAvatar(
                  height: 65,
                  width: 65,
                  image: 'assets/images/avatar.png',
                ),
                verticalSpace(20),
                Text(
                  'Fajar Ramadhan',
                  style: AssetStyle.textTitle.copyWith(fontSize: 16),
                ),
                Text(
                  'Fajarramadhan@gmail.com',
                  style: AssetStyle.textPrimary
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          verticalSpace(35),
          SizedBox(
            width: screenWidth(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Update Profile',
                    style: AssetStyle.textPrimary.copyWith(
                        color: AssetColor.blueDrak,
                        fontWeight: FontWeight.w500),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    'Update Password',
                    style: AssetStyle.textPrimary.copyWith(
                        color: AssetColor.blueDrak,
                        fontWeight: FontWeight.w500),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Logout',
                        style: AssetStyle.textPrimary.copyWith(
                            color: AssetColor.blueDrak,
                            fontWeight: FontWeight.w500),
                      ),
                      horizontalSpace(15),
                      const Icon(
                        Icons.logout,
                        color: AssetColor.blueDrak,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
