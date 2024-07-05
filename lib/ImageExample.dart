import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/utils/imageController.dart';

class ImageExample extends StatefulWidget {
  const ImageExample({super.key});

  @override
  State<ImageExample> createState() => _ImageExampleState();
}

class _ImageExampleState extends State<ImageExample> {
  ImageController imageController = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return Center(
            child: Column(
              children: [
                InkWell(
                    child: CircleAvatar(
                  radius: 50,
                  backgroundImage: imageController.imageAddress.isNotEmpty
                      ? FileImage(File(imageController.imageAddress.toString()))
                      : null,
                )),
                ElevatedButton(
                    onPressed: imageController.imagePicker,
                    child: const Text("Pick Image"))
              ],
            ),
          );
        },
      ),
    );
  }
}
