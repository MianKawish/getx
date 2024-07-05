import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/utils/switchController.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  final SwitchController _switchController = Get.put(SwitchController());
  bool notify = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Switch(
                    value: _switchController.notification.value,
                    onChanged: (value) {
                      _switchController.onChanged(value);
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
