import 'package:arasan/ui/screens/auth_screen/auth_screen.dart';
import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oktoast/oktoast.dart';

import 'constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: GetMaterialApp(
        theme: ThemeData(
          bottomNavigationBarTheme: Styles().bottomNavigationBarThemeData,
          primarySwatch: Colors.grey,
        ),
        initialRoute: '/',
        getPages: Routes.route_list,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
