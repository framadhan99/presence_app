import 'package:flutter/material.dart';
import 'package:presence_app/config/config.dart';

class InputLoginTextField extends StatelessWidget {
  const InputLoginTextField({super.key, required this.tile});
  final String tile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tile,
          style: AssetStyle.textPrimary.copyWith(color: AssetColor.blue),
        ),
        verticalSpace(10),
        TextField(
          style: AssetStyle.textPrimary
              .copyWith(fontSize: 14, color: AssetColor.blueDrak),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 15),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AssetColor.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AssetColor.blue),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
