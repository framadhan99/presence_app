import 'dart:async';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<T?> nextScreen<T extends Object?>(Widget screen) async {
  return await navigatorKey.currentState!
      .push(MaterialPageRoute(builder: (context) => screen));
}

Future<void> nextReplace(Widget screen) async {
  await navigatorKey.currentState!
      .pushReplacement(MaterialPageRoute(builder: (context) => screen));
}

void backScreen([dynamic result]) {
  navigatorKey.currentState!.pop(result);
}
