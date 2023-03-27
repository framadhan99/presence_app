import 'package:flutter/material.dart';
import 'package:presence_app/config/asset_styles.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  const AppBarCustom({super.key, required this.title, this.onTap});
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
            Spacer(),
            Text(
              title,
              style: AssetStyle.textTitle,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
