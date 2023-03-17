import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_colors.dart';
import 'package:presence_app/config/asset_styles.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final Function() ontap;
  const ButtonPrimary({
    super.key,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 35,
        width: 150,
        decoration: BoxDecoration(
          color: AssetColor.blueDrak,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: AssetStyle.textLabel.copyWith(fontSize: 12),
          ),
        ),
      ),
    );
  }
}
