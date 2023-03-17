import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_colors.dart';
import 'package:presence_app/config/asset_styles.dart';
import 'package:presence_app/config/ui_helper.dart';

class CardPresence extends StatelessWidget {
  final double height;
  final double width;
  final children;
  const CardPresence({
    super.key,
    required this.height,
    required this.width,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AssetColor.blueLight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
