import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/assets_const.dart';
import '../../../ui_samples/ui_samples.dart';
import '../../../ui_samples/ui_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController lastnameController = TextEditingController();
    TextEditingController iinController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      appBar: AB().appBarWithText('Профиль', true, false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                profilePhoto(),
                _divider(),
                Samples()
                    .textData(false, 'Фамилия', lastnameController, 'Фамилия'),
                SizedBox(
                  height: 12,
                ),
                Samples().textData(false, 'Имя', nameController, 'Имя'),
                SizedBox(
                  height: 12,
                ),
                Samples().textData(false, 'ИИН', iinController, 'ИИН'),
                SizedBox(
                  height: 12,
                ),
                Samples().textData(false, 'E-mail', emailController, 'E-mail'),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
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
                    child: Samples().filledOutlinedButton('Сохранить', false, 'save_profile', null)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget profilePhoto() {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(Assets().icn + 'cabinet_avatar.png'),
          backgroundColor: Colors.transparent,
        ),
        SizedBox(
          height: 8,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Изменить фото профиля',
            style: Styles()
                .titleWithCustomStyle(FontWeight.w500, 16, Color(0xff953e37)),
          ),
        ),
      ],
    );
  }

  Widget _divider() {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Divider(
          color: Color(0xffd9d9d9),
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
