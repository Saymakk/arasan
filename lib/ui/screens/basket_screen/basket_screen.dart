import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({Key? key}) : super(key: key);

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB().appBarWithText('Корзина', false, false),

      backgroundColor: Color(0xffF5F5F5),
    );
  }
}
