import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_colors.dart';
import 'package:presence_app/config/asset_styles.dart';
import 'package:presence_app/config/ui_helper.dart';
import 'package:presence_app/ui_features/widgets/buttons/button_primary.dart';
import 'package:presence_app/ui_features/widgets/cards/card_presence.dart';
import 'package:presence_app/ui_features/widgets/img/img_avatar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            children: [
              verticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth(context) / 1.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Fajar',
                          style: AssetStyle.textTitle.copyWith(fontSize: 20),
                        ),
                        verticalSpace(3),
                        Text(
                          'JL. Nyimaswanawati Tegalwangi Cirebon Jawa Barat',
                          style: AssetStyle.textPrimary.copyWith(
                              fontSize: 12, overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  ),
                  const ImageAvatar(
                    height: 65,
                    width: 65,
                    image: 'assets/images/avatar.png',
                  ),
                ],
              ),
              verticalSpace(20),
              CardPresence(
                height: 99,
                width: screenWidth(context),
                children: [
                  Text(
                    'Staff administrasi',
                    style: AssetStyle.textPrimary.copyWith(fontSize: 16),
                  ),
                  Text(
                    '07052022  23072001',
                    style: AssetStyle.textTitle.copyWith(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
              verticalSpace(10),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ButtonPrimary(
                      text: 'MASUK',
                      ontap: () {},
                    ),
                    Text(
                      '|',
                      style: AssetStyle.textTitle.copyWith(
                          color: AssetColor.blueLight,
                          fontSize: 35,
                          fontWeight: FontWeight.normal),
                    ),
                    ButtonPrimary(
                      text: 'KELUAR',
                      ontap: () {},
                    ),
                  ],
                ),
              ),
              verticalSpace(20),
              Divider(
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Last 5 Day',
                      style: AssetStyle.textPrimary,
                    ),
                    Text('See more',
                        style: AssetStyle.textPrimary.copyWith(
                          color: AssetColor.blue,
                        )),
                  ],
                ),
              ),
              ...[1, 2, 3, 4, 5].map(
                (e) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding:
                        const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    height: 120,
                    width: screenWidth(context),
                    decoration: BoxDecoration(
                      color: AssetColor.blueLight,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                  );
                },
              ).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
