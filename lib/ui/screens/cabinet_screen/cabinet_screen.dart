import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../widgets/app_bars.dart';

class CabinetScreen extends StatefulWidget {
  const CabinetScreen({Key? key}) : super(key: key);

  @override
  State<CabinetScreen> createState() => _CabinetScreenState();
}

class _CabinetScreenState extends State<CabinetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB().appBarWithText('Кабинет', false, false),
      backgroundColor: Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Samples().cabinetUserCard('Улукпанов Айбек'),
              SizedBox(
                height: 24,
              ),
              Samples().cabinetMenuList(
                context,
                'Персональные данные',
                userData,
              ),
              SizedBox(
                height: 16,
              ),
              Samples().cabinetMenuList(
                context,
                'Настройки',
                settingsData,
              ),
              SizedBox(
                height: 16,
              ),
              Samples().cabinetMenuList(
                context,
                'Социальные сети',
                socialNetworksData,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///добавлен коммент

  List<dynamic> userData = [
    {
      'icon': 'basket',
      'title': 'Активные покупки',
      'bool': true,
      'type': 'route',
      'route': 'basket'
    },
    {
      'icon': 'hearth',
      'title': 'Избранное',
      'bool': true,
      'type': 'route',
      'route': 'favorites'
    },
    {
      'icon': 'closet',
      'title': 'История шкафчика',
      'bool': true,
      'type': 'route',
      'route': 'closetHistory'
    },
    {
      'icon': 'abonements',
      'title': 'Мои абонементы',
      'bool': true,
      'type': 'route',
      'route': 'abonements'
    },
    {
      'icon': 'sertificates',
      'title': 'Мои сертификаты',
      'bool': true,
      'type': 'route',
      'route': 'sertificates'
    },
    {
      'icon': 'payments',
      'title': 'Способ оплаты',
      'bool': false,
      'type': 'route',
      'route': 'payments'
    },
  ];

  List<dynamic> settingsData = [
    {
      'icon': 'push',
      'title': 'Push-уведомления ',
      'bool': true,
      'type': 'push',
      'status': true
    },
    {
      'icon': 'languages',
      'title': 'Язык',
      'bool': true,
      'type': 'route',
      'route': 'languages'
    },
    {
      'icon': 'faq',
      'title': 'Часто задаваемые вопросы',
      'bool': true,
      'type': 'route',
      'route': 'faq'
    },
    {
      'icon': 'security',
      'title': 'Безопасность',
      'bool': true,
      'type': 'route',
      'route': 'security'
    },
    {
      'icon': 'support',
      'title': 'Служба поддержки',
      'bool': true,
      'type': 'route',
      'route': 'support'
    },
    {'icon': 'exit', 'title': 'Выход', 'bool': false, 'type': 'exit'},
  ];

  List<dynamic> socialNetworksData = [
    {
      'icon': 'whatsapp',
      'title': '+7 776 792 62 62',
      'bool': true,
      'type': 'whatsapp'
    },
    {
      'icon': 'instagram',
      'title': 'arasanspacomplex',
      'bool': false,
      'type': 'instagram'
    },
  ];
}
