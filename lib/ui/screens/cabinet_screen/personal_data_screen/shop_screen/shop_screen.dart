import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ActiveShoppingScreen extends StatelessWidget {
  const ActiveShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB().appBarWithText('Активные покупки', true, false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          children: [
           Samples().activeShop('venik','Дубовый веник', '2000', '11.06.2022, 19:45', '2'),
          ],
        ),
      ),
    );
  }


}
