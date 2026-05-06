import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:hisabo/app/app_colors.dart';
import 'package:hisabo/app/app_routes.dart';
import 'package:hisabo/core/localization/controllers/localization_controller.dart';
import 'package:hisabo/l10n/app_localizations.dart';

class Hisabo extends StatefulWidget {
  const Hisabo({super.key});

  @override
  State<Hisabo> createState() => _HisaboState();
}

class _HisaboState extends State<Hisabo> {

  final localeController = Get.put(LocaleController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: AppRoutes.pages,

      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: localeController.initialLocale,
      supportedLocales: [
        Locale('en'), // English
        Locale('bn'), // Bangle
      ],

      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: AppColors.textFieldTitleColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.textFieldBorderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.textFieldBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: AppColors.textFieldBorderColor),
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.loginTextButtonColor,
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
          ),
        ),
      ),
    );
  }
}
