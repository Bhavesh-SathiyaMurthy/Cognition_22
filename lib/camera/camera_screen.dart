//import 'package:camera/camera.dart';
//import 'package:camera_pic/scan_controller.dart';
import 'package:camera/camera.dart';
import 'package:camera_pic/camera/capture_button.dart';
import 'package:camera_pic/camera/top_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../scan_controller.dart';
import 'camera_viewer.dart';
class CameraScreen extends GetView<ScanController> {
  const CameraScreen({Key?key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: const[
      CameraViewer(),
      CaptureButton(),
      TopImageViewer(),
    ],
  );
  }
}