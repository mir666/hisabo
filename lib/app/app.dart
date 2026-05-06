import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisabo/app/app_routes.dart';

class Hisabo extends StatefulWidget {
  const Hisabo({super.key});

  @override
  State<Hisabo> createState() => _HisaboState();
}

class _HisaboState extends State<Hisabo> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: AppRoutes.pages,
    );
  }
}
