import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_colors.dart';
import 'package:presence_app/config/asset_styles.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final Function() ontap;
  final double? height;
  final double? width;
  final Color? color;

  const ButtonPrimary({
    super.key,
    required this.text,
    required this.ontap,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: height ?? 35,
        width: width ?? 150,
        decoration: BoxDecoration(
          color: color ?? AssetColor.blueDrak,
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
