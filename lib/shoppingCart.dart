import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/utils/cartController.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  final CartController _cartController = Get.put(CartController());
  List<String> fruitList = [
    'Apple',
    'Mango',
    'Orange',
    'Banana',
  ];
  List<String> favoriteList = [];
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: fruitList.length,
          itemBuilder: (context, index) {
            return Obx(
              () {
                return Card(
                  child: ListTile(
                    onTap: () {
                      _cartController.onPreseed(index);
                    },
                    leading: Text(_cartController.fruitList[index]),
                    trailing: Icon(
                      Icons.favorite,
                      color: _cartController.favoriteList
                              .contains(fruitList[index])
                          ? Colors.red
                          : Colors.black,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
