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
      this.padding});
  final double? height;
  final double? width;
  final Widget widget;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 120,
      width: width ?? screenWidth(context),
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: AssetColor.blueLight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget,
    );
  }
}
