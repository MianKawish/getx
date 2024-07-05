import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;

  counterIncrement() {
    counter.value++;
    print("Incremented to ${counter.value} through GetX Controller");
  }
}
