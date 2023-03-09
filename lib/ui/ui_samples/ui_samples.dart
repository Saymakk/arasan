import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pinput/pinput.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../constants/assets_const.dart';

class Samples {
  ///Заголовки
  Text textTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: const Color(0xff1e1e1e),
      ),
    );
  }

  ///Поле ввода номера телефона
  TextFormField phoneNumber(TextEditingController phoneNumberController) {
    return TextFormField(
      controller: phoneNumberController,
      inputFormatters: [
        MaskTextInputFormatter(
            mask: '+7 (###) ###-##-##',
            filter: {"#": RegExp(r'[0-9]')},
            type: MaskAutoCompletionType.lazy),
      ],
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffefefef),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Color(0xffefefef)),
          borderRadius: BorderRadius.circular(6),
        ),
        // Set border for focused state
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Color(0xffefefef)),
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: '+7',
        hintStyle: Styles().hintTextStyle(),
      ),
    );
  }

  ///Поле ввода текстовых данных
  dynamic textData(bool visibleStar, String title,
      TextEditingController textDataController, String hintText) {
    return Column(
      children: [
        Row(
          children: [
            Visibility(
                visible: visibleStar,
                child: Text(
                  '* ',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff953e37)),
                )),
            Text(
              title,
              style: Styles().textTitleField(),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: textDataController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffefefef),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Color(0xffefefef)),
              borderRadius: BorderRadius.circular(6),
            ),
            // Set border for focused state
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Color(0xffefefef)),
              borderRadius: BorderRadius.circular(6),
            ),
            hintText: hintText,
            hintStyle: Styles().hintTextStyle(),
          ),
        ),
      ],
    );
  }

  ///Поле ввода пароля
  TextFormField password(TextEditingController passwordController,
      dynamic trailingIcon, bool obscured) {
    return TextFormField(
      controller: passwordController,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffefefef),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Color(0xffefefef)),
          borderRadius: BorderRadius.circular(6),
        ),
        // Set border for focused state
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Color(0xffefefef)),
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: 'Пароль',
        hintStyle: Styles().hintTextStyle(),
        suffixIcon: trailingIcon,
      ),
      obscureText: obscured,
    );
  }

  ///незакрашенная кнопка
  OutlinedButton unfilledOutlinedButton(
      String text, bool isAction, String comment, dynamic args) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(color: Color(0xff953E37)),
      ),
      onPressed: () {
        isAction == true ? Get.toNamed('/$comment', arguments: args) : null;
      },
      child: Text(
        text,
        style: Styles().buttonUnfilledTextStyle(),
      ),
    );
  }

  ///закрашенная кнопка
  OutlinedButton filledOutlinedButton(
      String text, bool isAction, String comment, dynamic args) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Color(0xff953E37),
        side: BorderSide(color: Color(0xff953E37)),
      ),
      onPressed: () {
        if (comment == 'get_off_all') {
          Get.offAllNamed('/');
        }
        if (comment != 'get_off_all' || comment != 'save_profile') {
          isAction == true ? Get.toNamed('/$comment', arguments: args) : null;
        }
        if(comment == 'save_profile'){
          ///ЗДЕСЬ БУДЕТ РЕКВЕСТ НА СОХРАНЕНИЕ ИЗМЕНЕНИЙ
          print('Данные профиля сохранены');
          Get.back();
          showToast('Данные сохранены', position: ToastPosition(align: Alignment.bottomCenter));

        }
      },
      child: Text(
        text,
        style: Styles().buttonFilledTextStyle(),
      ),
    );
  }

  ///заголовок для регистрации, восстановления пароля
  dynamic titleSubtitle(String title, subtitle) {
    return Center(
      child: Column(
        children: [
          Text(
            title,
            style: Styles().titleTextStyle(),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            subtitle,
            style: Styles().hintTextStyle(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  ///поле ввода кода из смс
  PinTheme pinsTheme(BuildContext context, Color borderColor) {
    return PinTheme(
      width: MediaQuery.of(context).size.width / 4,
      height: 44,
      decoration: BoxDecoration(
          color: Color(0xffefefef),
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(6)),
    );
  }

  dynamic cabinetUserCard(String name) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
        child: Container(
          margin: EdgeInsets.all(16),
          child: ListTile(
            onTap: () {
              Get.toNamed('/profile');
            },
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage(Assets().icn + 'cabinet_avatar.png'),
              backgroundColor: Colors.transparent,
            ),
            title: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(name),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff8c8c8c),
            ),
          ),
        ));
  }

  dynamic cabinetMenuList(
    BuildContext context,
    String preTitle,
    List<dynamic> menuList,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              preTitle,
              style: Styles().cardTitleText(),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 4,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: SizedBox(
                width: double.infinity,
                height: 69 * menuList.length.toDouble(),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: menuList.length,
                    itemBuilder: (context, index) {
                      bool pushValue = menuList[index]['status'] ?? false;
                      return Column(
                        children: [
                          ListTile(
                            onTap: () {
                              print(menuList[index]['type']);
                              if (menuList[index]['type'] == 'whatsapp') {
                                launchWhatsAppUri(menuList[index]['title']);
                              }
                              if (menuList[index]['type'] == 'instagram') {
                                launchInstagramAppUri(menuList[index]['title']);
                              }
                              if (menuList[index]['type'] == 'route') {
                                Get.toNamed('/${menuList[index]['route']}');
                              }
                            },
                            leading: SvgPicture.asset(
                              Assets().icn +
                                  'cabinet_${menuList[index]['icon']}.svg',
                              width: 24,
                              height: 24,
                            ),
                            title: Text(
                              menuList[index]['title'].toString(),
                              style: Styles().listtileTitleText(),
                            ),
                            trailing: menuList[index]['type'] == 'push'
                                ? CupertinoSwitch(
                                    activeColor: Color(0xff953e37),
                                    thumbColor: Colors.white,
                                    trackColor: Colors.black12,
                                    onChanged: ( pushValue) {
                                      print(pushValue);
                                    }, value: pushValue,
                                    // onChanged: (bool pushValue) {
                                    //   pushValue = !pushValue;
                                    // },
                                    // changes the state of the switch
                                    // onChanged: (value) => setState(() => forIos = value),
                                  )
                                : Icon(
                                    Icons.arrow_forward_ios,
                                    size: 24,
                                  ),
                          ),
                          Visibility(
                            visible: menuList[index]['bool'],
                            child: Divider(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      );
                    }),
              ),
            )),
      ],
    );
  }
}

launchWhatsAppUri(String number) async {
  number = number.removeAllWhitespace;
  final link = "whatsapp://send?phone=${number}" +
      "&text=${Uri.encodeComponent('Здравствуйте! ')}";
  await launchUrlString('$link');
}

launchInstagramAppUri(String profile) async {
  final link = "https://www.instagram.com/$profile";
  await launchUrlString('$link');
}
