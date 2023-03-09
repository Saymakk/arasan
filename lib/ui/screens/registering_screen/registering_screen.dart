import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  TextEditingController iinController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Регистрация',
                'Введите ваши данные для регистрации',
              ),
              SizedBox(
                height: 32,
              ),
              Samples().textData(false, 'ИИН', iinController, 'Введите ИИН'),
              SizedBox(
                height: 12,
              ),
              Samples().textData(
                  true, 'Фамилия', lastnameController, 'Введите Фамилию'),
              SizedBox(
                height: 12,
              ),
              Samples().textData(true, 'Имя', nameController, 'Введите Имя'),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    '* ',
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff953e37)),
                  ),
                  Text(
                    'Телефон',
                    style: Styles().textTitleField(),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Samples().phoneNumber(phoneController),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                  height: 44,
                  width: double.infinity,
                  child: Samples().filledOutlinedButton('Продолжить', true, 'createpass', null)),
            ],
          ),
        ),
      ),
    );
  }
}
