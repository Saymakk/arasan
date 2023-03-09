import 'package:arasan/constants/assets_const.dart';
import 'package:arasan/ui/screens/basket_screen/basket_screen.dart';
import 'package:arasan/ui/screens/bonuses_screen/bonuses_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/cabinet_screen.dart';
import 'package:arasan/ui/screens/main_screen/main_screen.dart';
import 'package:arasan/ui/screens/shop_screen/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets().icn + 'bap_main.svg',
            ),
            activeIcon: SvgPicture.asset(
              Assets().icn + 'bap_main.svg',
              color: Color(0xff953e37),
            ),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets().icn + 'bap_shop.svg'),
            activeIcon: SvgPicture.asset(
              Assets().icn + 'bap_shop.svg',
              color: Color(0xff953e37),
            ),
            label: "Магазин",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets().icn + 'bap_basket.svg'),
            activeIcon: SvgPicture.asset(
              Assets().icn + 'bap_basket.svg',
              color: Color(0xff953e37),
            ),
            label: "Корзина",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets().icn + 'bap_bonuses.svg'),
            activeIcon: SvgPicture.asset(
              Assets().icn + 'bap_bonuses.svg',
              color: Color(0xff953e37),
            ),
            label: "Бонусы",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets().icn + 'bap_cabinet.svg'),
            activeIcon: SvgPicture.asset(
              Assets().icn + 'bap_cabinet.svg',
              color: Color(0xff953e37),
            ),
            label: "Кабинет",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff953e37),
        unselectedItemColor: Color(0xff595959),
        onTap: _onItemTapped,
      ),
    );
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const MainScreen(),
    const ShopScreen(),
    const BasketScreen(),
    const BonusesScreen(),
    const CabinetScreen(),
  ];
}
