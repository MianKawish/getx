import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/utils/counterScreen.dart';
import 'package:getx/utils/opacityController.dart';

class ContainerSlider extends StatelessWidget {
  ContainerSlider({super.key});

  OpacityController opacityController = Get.put(OpacityController());
  final double staticOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Get.to(() => CounterScreen());
        },
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.orange,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Opacity With GetX",
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () {
                    return Opacity(
                        opacity: 1 - opacityController.opacity.toDouble(),
                        child: Container(
                          width: Get.width / 2,
                          child: const Column(
                            children: [
                              Image(
                                  image: AssetImage("assets/pic1.jpg"),
                                  fit: BoxFit.cover),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Congratulations are selected for Interview",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                Obx(
                  () {
                    return Opacity(
                        opacity: opacityController.opacity.toDouble(),
                        child: Container(
                          width: Get.width / 2,
                          child: const Column(
                            children: [
                              Image(
                                image: AssetImage("assets/pic2.jpg"),
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "We will INFORM you!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        ));
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(() {
              return Slider(
                activeColor: Colors.orange,
                inactiveColor: Colors.black,
                value: opacityController.opacity.toDouble(),
                onChanged: (value) {
                  opacityController.setOpacity(value);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
