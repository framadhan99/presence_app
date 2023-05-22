import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';

class DialogGeneral extends StatelessWidget {
  const DialogGeneral({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AssetColor.blueLight,
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: AssetStyle.textPrimary.copyWith(height: 1.5),
      ),
    );
  }
}
