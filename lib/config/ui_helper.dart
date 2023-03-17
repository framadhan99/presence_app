import 'package:flutter/material.dart';

// vertical and horizontal spacing
Widget horizontalSpace(double size) => SizedBox(width: size);
Widget verticalSpace(double size) => SizedBox(height: size);

// screen size
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenPadTop(BuildContext context) => MediaQuery.of(context).padding.top;
