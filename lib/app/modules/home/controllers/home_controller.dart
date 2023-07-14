import 'package:get/get.dart';

class HomeController extends GetxController {
  final Rx<DateTime> _selectedValue = DateTime.now().obs;

  DateTime get selectedValue => _selectedValue.value;



  void setSelectedDate(DateTime date) {
    _selectedValue.value = date;
  }

  final count = 0.obs;



  void increment() => count.value++;
}
