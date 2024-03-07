import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterController extends GetxController {
  Rx<RangeValues> values = Rx<RangeValues>(const RangeValues(0.1, 0.3));

  void updateValues(RangeValues newValues) {
    values.value = newValues;
  }
}
