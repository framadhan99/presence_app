import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  const AppBarCustom({
    super.key,
    required this.title,
    this.onTap,
    this.widget,
    this.action,
  });
  final String title;
  final Function()? onTap;
  final Widget? widget;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: widget ??
                  const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
            ),
            const Spacer(),
            Text(
              title,
              style: AssetStyle.textTitle,
            ),
            const Spacer(),
            action ?? horizontalSpace(30)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
