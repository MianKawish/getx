import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/utils/getxController.dart';
import 'package:getx/utils/sliderContainer.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Get.to(ContainerSlider());
        },
        child: const Icon(
          Icons.arrow_back,
          color: Colors.orange,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Counter With GetX",
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Center(child: Obx(() {
                return Text(
                  controller.counter.toString(),
                  style: const TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                );
              })),
            ),
            const SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                controller.counterIncrement();
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
