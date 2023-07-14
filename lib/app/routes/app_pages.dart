import 'package:get/get.dart';

import '../modules/bottomNav/bindings/bottom_nav_binding.dart';
import '../modules/bottomNav/views/bottom_nav_view.dart';
import '../modules/carddetailes/bindings/carddetailes_binding.dart';
import '../modules/carddetailes/views/carddetailes_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/storeprofile/bindings/storeprofile_binding.dart';
import '../modules/storeprofile/views/storeprofile_view.dart';
import '../modules/users/bindings/users_binding.dart';
import '../modules/users/views/users_view.dart';
import '../modules/work/bindings/work_binding.dart';
import '../modules/work/views/work_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM_NAV;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAV,
      page: () => BottomNavView(),
      binding: BottomNavBinding(),
    ),
    GetPage(
      name: _Paths.WORK,
      page: () => const WorkView(),
      binding: WorkBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.USERS,
      page: () => const UsersView(),
      binding: UsersBinding(),
    ),
    GetPage(
      name: _Paths.CARDDETAILES,
      page: () => CarddetailesView(),
      binding: CarddetailesBinding(),
    ),
    GetPage(
      name: _Paths.STOREPROFILE,
      page: () =>  StoreprofileView(),
      binding: StoreprofileBinding(),
    ),
  ];
}
