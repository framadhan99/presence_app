import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/ui_features/pages/home/detail_presence_screen.dart';
import 'package:presence_app/ui_features/widgets/appbar/appbar_custom.dart';
import 'package:presence_app/ui_features/widgets/cards/card_general.dart';

class MorePresenceScreen extends StatelessWidget {
  const MorePresenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(title: 'PRESENCE'),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => CardGeneral(
            onTap: () => nextScreen(const DetailPresenceScreen()),
            height: 130,
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Friday, March 17 2023',
                    style: AssetStyle.textPrimary.copyWith(
                        color: AssetColor.blueDrak,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
                Text(
                  'Masuk',
                  style: AssetStyle.textPrimary.copyWith(
                    color: AssetColor.blueDrak,
                  ),
                ),
                Text(
                  '2022-03-2023 07:30:20',
                  style: AssetStyle.textPrimary.copyWith(
                    color: AssetColor.blueDraked,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  'Keluar',
                  style: AssetStyle.textPrimary.copyWith(
                    color: AssetColor.blueDrak,
                  ),
                ),
                Text(
                  '2022-03-2023 06:00:00',
                  style: AssetStyle.textPrimary.copyWith(
                    color: AssetColor.blueDraked,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
