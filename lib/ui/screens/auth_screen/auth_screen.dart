import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool obscured = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                children: [
                  SizedBox(
                    height: 28,
                  ),
                  SvgPicture.asset(Assets().img + 'logo.svg'),
                  SizedBox(
                    height: 24,
                  ),
                  Samples().textTitle('Введите номер телефона и пароль'),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Samples().phoneNumber(phoneNumberController),
                        SizedBox(
                          height: 12,
                        ),
                        Samples()
                            .password(passwordController, icnBtn(), obscured),
                        SizedBox(
                          height: 12,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed('/reppasscreen');
                          },
                          child: Text(
                            'Забыли пароль?',
                            style: Styles().hintTextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        SizedBox(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: Samples().filledOutlinedButton('Войти', true, 'bottomnav', ''),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: 44,
                      width: MediaQuery.of(context).size.width,
                      child: Samples().unfilledOutlinedButton('Регистрация', true, 'regscreen', ''),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void obscure(bool obscured) {
    setState(() {
      obscured = !obscured;
    });
  }

  IconButton icnBtn() {
    return IconButton(
      onPressed: () {
        setState(() {
          obscured = !obscured;
        });
      },
      icon: Icon(
        Icons.remove_red_eye_outlined,
        color: obscured == true ? Colors.grey : Colors.black,
      ),
    );
  }
}
