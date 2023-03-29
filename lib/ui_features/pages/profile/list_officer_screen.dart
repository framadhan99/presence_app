import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/ui_features/widgets/appbar/appbar_custom.dart';

import '../../widgets/img/img_avatar.dart';

class ListOfficerScreen extends StatelessWidget {
  const ListOfficerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(
        title: 'LIST OFFICER',
        onTap: backScreen,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
          height: screenHeight(context),
          child: ListView.builder(
            itemBuilder: (context, index) => Column(
              children: [
                Row(
                  children: [
                    const ImageAvatar(
                      height: 50,
                      width: 50,
                      image: 'assets/images/avatar.png',
                    ),
                    horizontalSpace(10),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fajar Ramadhan',
                            style: AssetStyle.textTitle.copyWith(fontSize: 14),
                          ),
                          Text(
                            'Fajarramadhan@gmail.com',
                            style: AssetStyle.textPrimary.copyWith(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.delete,
                      size: 18,
                      color: AssetColor.blueDrak,
                    )
                  ],
                ),
                verticalSpace(10),
                const Divider(
                  color: AssetColor.blueDrak,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
