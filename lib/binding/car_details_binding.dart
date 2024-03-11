import 'package:get/get.dart';

import '../controller/car_details_controller.dart';

class CarDetialsBindings extends Bindings{
  @override
  void dependencies() {
    final CarDetailsController controllerDetails = Get.put(CarDetailsController());
  }

}