import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_colors.dart';

class ImageAvatar extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  const ImageAvatar({
    super.key,
    required this.height,
    required this.width,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AssetColor.blue,
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
