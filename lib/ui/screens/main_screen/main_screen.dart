import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/ui/ui_samples/ui_samples.dart';
import 'package:arasan/ui/ui_samples/ui_styles.dart';
import 'package:arasan/widgets/app_bars.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AB().appBarWithText('Главная', false, true),
        backgroundColor: Color(0xffF5F5F5),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              newsSlider(),
              SizedBox(
                height: 24,
              ),
              mainScreenButtons(),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];
  int _current = 0;

  Widget newsSlider() {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              height: 140,
              viewportFraction: 1,
              onPageChanged: (i, r) {
                setState(() {
                  _current = i;
                });
              }),
          items: images
              .map((e) => ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(e, fit: BoxFit.cover),
                  ))
              .toList(),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          child: AnimatedSmoothIndicator(
            activeIndex: _current,
            count: images.length,
            effect: WormEffect(
              dotWidth: 10,
              dotHeight: 10,
              dotColor: Color(0xffD9D9D9),
              activeDotColor: Color(0xff953E37),
            ),
          ),
        )
      ],
    );
  }

  Widget mainScreenButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Главная',
          style: Styles().titleTextStyle(),
        ),
        SizedBox(
          height: 16,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Samples().mainScreenButtons('main_services', 'Услуги'),
           Samples().mainScreenButtons('main_gifts', 'Подарки'),
           Samples().mainScreenButtons('main_sales', 'Акции'),
          ],
        ),
      ],
    );
  }
}
