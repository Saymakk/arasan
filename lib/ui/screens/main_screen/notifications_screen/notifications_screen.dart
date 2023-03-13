import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AB().appBarWithText('Уведомления', true, false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                            Assets().icn + 'notification_icon.svg'),
                        SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width *.65, height: MediaQuery.of(context).size.height*.1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Заголовок уведомления',
                                style: Styles().notificationTitle(),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Flexible(
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                                  style: Styles().notificationDescription(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  maxLines: 5,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
