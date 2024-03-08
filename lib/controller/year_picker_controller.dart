import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class YearPickerController extends GetxController {
  DateTime? selectedDate;
  String get selectedDateText {
    return selectedDate != null ? "${selectedDate!.year}" : "";
  }

  void updateCode() {
    update();
  }
}
