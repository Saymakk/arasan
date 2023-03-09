import 'dart:io';

import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class AddPhotoScreen extends StatefulWidget {
  const AddPhotoScreen({Key? key}) : super(key: key);

  @override
  State<AddPhotoScreen> createState() => _AddPhotoScreenState();
}

class _AddPhotoScreenState extends State<AddPhotoScreen> {
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
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  pickImage();
                },
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                          color: Color(0xffefefef),
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: image != null
                            ? Image.file(
                                image!,
                                fit: BoxFit.fill,
                              )
                            : SvgPicture.asset(Assets().icn + 'photo.svg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Color(0xff953E37),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Samples().textTitle('Добавьте свою фотографию в профиль'),
              Spacer(),
              Column(
                children: [
                  SizedBox(
                    height: 44,
                    width: double.infinity,
                    child: Samples().filledOutlinedButton(
                        'Продолжить', true, 'добавить фото', ''),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 44,
                    width: double.infinity,
                    child: Samples().unfilledOutlinedButton(
                        'Пропустить', true, 'добавить фото', ''),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
