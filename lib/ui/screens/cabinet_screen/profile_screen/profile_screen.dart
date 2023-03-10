import 'dart:io';

import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../constants/assets_const.dart';
import '../../../ui_samples/ui_samples.dart';
import '../../../ui_samples/ui_styles.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                    child: Samples().filledOutlinedButton(
                        'Сохранить', false, 'save_profile', null)),
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
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Color(0xffefefef),
              borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: image != null
                ? Container(
                    width: 100,
                    height: 100,
                    child: Image.file(
                      image!,
                      fit: BoxFit.fill,
                    ))
                : SvgPicture.asset(Assets().icn + 'photo.svg'),
          )),
        ),
        SizedBox(
          height: 8,
        ),
        TextButton(
          onPressed: () {
            pickImage();
          },
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

  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final firstSideImageTemp = File(image.path);

      setState(() => this.image = firstSideImageTemp);
    } on PlatformException catch (e) {
      print('Failed $e');
    }
  }
}
