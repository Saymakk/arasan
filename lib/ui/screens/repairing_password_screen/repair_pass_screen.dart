import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';

class RepPassScreen extends StatefulWidget {
  const RepPassScreen({Key? key}) : super(key: key);

  @override
  State<RepPassScreen> createState() => _RepPassScreenState();
}

class _RepPassScreenState extends State<RepPassScreen> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AB().appBarWithLogo(),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          child: Center(
            child: Column(
              children: [
                Samples().titleSubtitle(
                  'Введите номер',
                  'Ваш номер телефона будет использоваться для входа в аккаунт',
                ),
                SizedBox(
                  height: 24,
                ),
                Samples().phoneNumber(phoneNumberController),
                SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: Samples().filledOutlinedButton(
                    'Продолжить',
                    true,
                    'repsms',
                    phoneNumberController.text,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
