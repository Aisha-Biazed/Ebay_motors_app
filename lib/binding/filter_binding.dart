import 'package:get/get.dart';

import '../controller/range_slider_controller.dart';
import '../controller/year_picker_controller.dart';

class FilterBindings extends Bindings {
  @override
  void dependencies() {
    final FilterController controller = Get.put(FilterController());
    final YearPickerController c = Get.put(YearPickerController());
  }
}
