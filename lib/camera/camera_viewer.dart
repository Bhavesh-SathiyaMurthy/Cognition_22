import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import '../scan_controller.dart';

class CameraViewer extends StatelessWidget{
  const CameraViewer({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return GetX<ScanController>(builder: (controller) {
      if (!controller.isInitialized) {
        return Container();
      }
      return SizedBox(
          height: Get.height,
          width: Get.width,
          child:CameraPreview(controller.cameraController)
      );
    });
  }
  }
