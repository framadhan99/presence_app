import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_colors.dart';
import 'package:presence_app/config/asset_styles.dart';

final theme = ThemeData(
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: AssetColor.blueDraked),
    backgroundColor: Colors.white,
    titleTextStyle: AssetStyle.textTitle,
    elevation: 0,
    centerTitle: true,
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder(),
  }),
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    displaySmall: AssetStyle.textPrimary,
    displayMedium: AssetStyle.textPrimary,
    displayLarge: AssetStyle.textTitle.copyWith(fontSize: 20),
  ),
  inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(color: AssetColor.blueDrak)),
);
