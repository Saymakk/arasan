import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB().appBarWithText('Магазин', false, false),

      backgroundColor: Color(0xffF5F5F5),
    );
  }
}
