import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool notification = false.obs;
  onChanged(bool value) {
    notification.value = value;
  }
}
