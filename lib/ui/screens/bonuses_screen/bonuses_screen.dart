import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';

class BonusesScreen extends StatefulWidget {
  const BonusesScreen({Key? key}) : super(key: key);

  @override
  State<BonusesScreen> createState() => _BonusesScreenState();
}

class _BonusesScreenState extends State<BonusesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB().appBarWithText('Бонусы', false, false),

      backgroundColor: Color(0xffF5F5F5),
    );
  }
}
