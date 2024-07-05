import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<String> fruitList = [
    'Apple',
    'Mango',
    'Orange',
    'Banana',
  ].obs;
  RxList<dynamic> favoriteList = [].obs;
  onPreseed(int index) {
    if (favoriteList.contains(fruitList[index])) {
      favoriteList.remove(fruitList[index]);
    } else {
      favoriteList.add(fruitList[index]);
    }
  }
}
