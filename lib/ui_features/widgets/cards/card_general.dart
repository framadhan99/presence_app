import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_colors.dart';
import 'package:presence_app/config/ui_helper.dart';

class CardGeneral extends StatelessWidget {
  const CardGeneral(
      {super.key,
      this.height,
      this.width,
      required this.widget,
      this.margin,
      this.padding,
      this.onTap});
  final double? height;
  final double? width;
  final Widget widget;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 120,
        width: width ?? screenWidth(context),
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: AssetColor.blueLight,
          borderRadius: BorderRadius.circular(10),
        ),
        child: widget,
      ),
    );
  }
}
