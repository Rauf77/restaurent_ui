import 'package:get/get.dart';

import '../controllers/storeprofile_controller.dart';

class StoreprofileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StoreprofileController>(
      () => StoreprofileController(),
    );
  }
}
