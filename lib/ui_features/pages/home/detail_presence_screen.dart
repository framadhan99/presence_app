import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/ui_features/widgets/appbar/appbar_custom.dart';
import 'package:presence_app/ui_features/widgets/cards/card_general.dart';

class DetailPresenceScreen extends StatelessWidget {
  const DetailPresenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: 'DETAIL PRESENCE',
        onTap: () => backScreen(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: CardGeneral(
          height: 250,
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Masuk',
                style: AssetStyle.textPrimary.copyWith(
                  color: AssetColor.blueDrak,
                ),
              ),
              Text(
                'Jam             : 07:30:20 AM',
                style: AssetStyle.textPrimary.copyWith(
                  color: AssetColor.blueDraked,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Posisi         : -6.7004995,108.4500293',
                style: AssetStyle.textPrimary.copyWith(
                  color: AssetColor.blueDraked,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'status         : in the area',
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
                'Jam             : 04:30:20 PM',
                style: AssetStyle.textPrimary.copyWith(
                  color: AssetColor.blueDraked,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Posisi         : -6.7004995,108.4500293',
                style: AssetStyle.textPrimary.copyWith(
                  color: AssetColor.blueDraked,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'status         : in the area',
                style: AssetStyle.textPrimary.copyWith(
                  color: AssetColor.blueDraked,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  'Friday, March 17 2023',
                  style: AssetStyle.textPrimary.copyWith(
                      color: AssetColor.blueDrak,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
