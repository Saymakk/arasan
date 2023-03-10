import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActiveShopDetailsScreen extends StatelessWidget {
  const ActiveShopDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic details = Get.arguments;

    return Scaffold(
      appBar: AB().appBarWithText('Активные покупки', true, false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: Center(
          child: Column(
            children: [
              Samples().activeShopDetails(
                  details[0], details[1], details[2], details[3], details[4]),
            ],
          ),
        ),
      ),
    );
  }
}
