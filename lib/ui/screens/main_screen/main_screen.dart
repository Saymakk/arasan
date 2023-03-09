import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AB().appBarWithText('Главная', false, true),

        backgroundColor: Color(0xffF5F5F5),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Main Screen')
          ],
        ),
      ),
    );
  }
}
