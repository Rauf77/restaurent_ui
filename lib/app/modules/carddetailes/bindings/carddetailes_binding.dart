import 'package:get/get.dart';

import '../controllers/carddetailes_controller.dart';

class CarddetailesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarddetailesController>(
      () => CarddetailesController(),
    );
  }
}
