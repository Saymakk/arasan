import 'dart:async';

import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class RepPasSmsScreen extends StatefulWidget {
  const RepPasSmsScreen({Key? key}) : super(key: key);

  @override
  State<RepPasSmsScreen> createState() => _RepPasSmsScreenState();
}

class _RepPasSmsScreenState extends State<RepPasSmsScreen> {
  TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB().appBarWithLogo(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Column(
          children: [
            Samples().titleSubtitle(
              'SMS-код',
              'На ваш номер ${Get.arguments.toString()} отправлено SMS с кодом подтверждения',
            ),
            SizedBox(
              height: 24,
            ),
            Pinput(
              controller: pinCodeController,
              onCompleted: (pin) {
                if (pin.length == 4) {
                  setState(() {});
                  ///Здесь будет проверка на правильность пин-кода
                }
              },
              length: 4,
              errorPinTheme: Samples().pinsTheme(context, Colors.red),
              defaultPinTheme: Samples().pinsTheme(
                context,
                Color(0xffefefef),
              ),
              focusedPinTheme: Samples().pinsTheme(
                context,
                Color(0xff953e37),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Неверный код подтверждения',
              style: Styles().titleWithCustomStyle(
                FontWeight.w400,
                16,
                Color(0xffff4d5a),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Здесь будет таймер'),
            SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Отправить повторно',
                style: Styles().titleWithCustomStyle(
                    FontWeight.w400, 16, Color(0xff953e37)),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              height: 44,
              child: Samples().filledOutlinedButton(
                'Продолжить',
                true,
                'newpass',
                '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
