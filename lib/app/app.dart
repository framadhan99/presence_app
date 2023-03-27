import 'package:flutter/material.dart';
import 'package:presence_app/config/navigations_service.dart';
import 'package:presence_app/ui_features/pages/dashboard_screen.dart';
import 'app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presence',
      theme: theme,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: DashboardMainScreen(),
    );
  }
}
