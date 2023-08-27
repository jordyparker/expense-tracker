import 'package:expense_tracker/core/config.dart';
import 'package:expense_tracker/core/pages.dart';
import 'package:expense_tracker/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpenseTracker extends StatelessWidget {
  // Root of the application
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: pages,
      debugShowCheckedModeBanner: false,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      fallbackLocale: config.get('app.fallback_locale'),
      supportedLocales: config.get('app.supported_locales'),
      title: config.get('app.name'),
      initialRoute: '/home',
    );
  }
}
