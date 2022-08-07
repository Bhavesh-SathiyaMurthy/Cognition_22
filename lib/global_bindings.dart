import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import 'scan_controller.dart';
class GlobalBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ScanController>(() => ScanController());
  }


}