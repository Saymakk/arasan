import 'package:arasan/constants/assets_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AB {
  AppBar appBarWithLogo() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff953E37),
        ),
      ),
      centerTitle: true,
      title: SvgPicture.asset(
        Assets().img + 'logo.svg',
        height: 40,
        width: 87,
      ),
    );
  }

  AppBar appBarWithText(String title, bool isBackButton, bool isBell) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: isBackButton == true
          ? IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff953e37),
              ))
          : Icon(
              Icons.arrow_back_ios,
              color: Colors.transparent,
            ),
      title: Text(title),
      centerTitle: true,
      actions: [
        Visibility(
          visible: isBell,
          child: IconButton(
            onPressed: () {
              Get.toNamed('/notifications');
            },
            icon: SvgPicture.asset(
              Assets().icn + 'ab_bell.svg',
              color: Color(0xff953e37),
            ),
          ),
        ),
      ],
    );
  }
}
