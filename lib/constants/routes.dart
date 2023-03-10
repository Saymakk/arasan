import 'package:arasan/ui/screens/auth_screen/auth_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/personal_data_screen/abonements_screen/abonements_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/personal_data_screen/closet_history_screen/closet_history_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/personal_data_screen/favorites_screen/favorites_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/personal_data_screen/payments_screen/payments_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/personal_data_screen/sertificates_screen/sertificates_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/personal_data_screen/shop_screen/active_shop_details/active_shop_details.dart';
import 'package:arasan/ui/screens/cabinet_screen/personal_data_screen/shop_screen/shop_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/profile_screen/profile_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/settings_screen/faq_screen/faq_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/settings_screen/languages_screen/languages_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/settings_screen/security_screen/security_screen.dart';
import 'package:arasan/ui/screens/cabinet_screen/settings_screen/support_screen/support_screen.dart';
import 'package:arasan/ui/screens/main_screen/main_screen.dart';
import 'package:arasan/ui/screens/main_screen/notifications_screen/notifications_screen.dart';
import 'package:arasan/ui/screens/registering_screen/create_pass_screen/create_pass_screen.dart';
import 'package:arasan/ui/screens/registering_screen/registering_screen.dart';
import 'package:arasan/ui/screens/repairing_password_screen/rep_pass_sms/new_pass_screen/add_photo_screen/add_photo_screen.dart';
import 'package:arasan/ui/screens/repairing_password_screen/repair_pass_screen.dart';
import 'package:arasan/widgets/bottom_nav_bar.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../ui/screens/repairing_password_screen/rep_pass_sms/new_pass_screen/new_pass_screen.dart';
import '../ui/screens/repairing_password_screen/rep_pass_sms/rep_pass_sms.dart';

class Routes {
  static List<GetPage> route_list = [
    GetPage(
        name: '/',
        page: () =>  AuthScreen(),
        transition: Transition.rightToLeft),
GetPage(
        name: '/main',
        page: () =>  MainScreen(),
        transition: Transition.rightToLeft),

GetPage(
        name: '/reppasscreen',
        page: () =>  RepPassScreen(),
        transition: Transition.rightToLeft),

GetPage(
        name: '/repsms',
        page: () =>  RepPasSmsScreen(),
        transition: Transition.rightToLeft),

GetPage(
        name: '/newpass',
        page: () =>  NewPassScreen(),
        transition: Transition.rightToLeft),

GetPage(
        name: '/regscreen',
        page: () =>  RegScreen(),
        transition: Transition.rightToLeft),

GetPage(
        name: '/createpass',
        page: () =>  CreatePassScreen(),
        transition: Transition.rightToLeft),

GetPage(
        name: '/addphoto',
        page: () =>  AddPhotoScreen(),
        transition: Transition.rightToLeft),

GetPage(
        name: '/bottomnav',
        page: () =>  BottomNavBar(),
        transition: Transition.rightToLeft),

GetPage(
        name: '/abonements',
        page: () =>  AbonementsScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/closetHistory',
        page: () =>  ClosetHistoryScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/favorites',
        page: () =>  FavoritesScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/payments',
        page: () =>  PaymentsScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/sertificates',
        page: () =>  SertificatesScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/activeShopping',
        page: () =>  ActiveShoppingScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/faq',
        page: () =>  FAQScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/languages',
        page: () =>  LanguagesScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/security',
        page: () =>  SecurityScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/support',
        page: () =>  SupportScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/notifications',
        page: () =>  NotificationsScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/profile',
        page: () =>  ProfileScreen(),
        transition: Transition.rightToLeft),

    GetPage(
        name: '/activeShopDetails',
        page: () =>  ActiveShopDetailsScreen(),
        transition: Transition.rightToLeft),

  ];
}
