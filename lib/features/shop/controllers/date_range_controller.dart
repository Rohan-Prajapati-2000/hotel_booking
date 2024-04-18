import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SDateRangeController extends GetxController {
  static SDateRangeController get instance => Get.put(SDateRangeController());

  var startDate = DateTime.now().obs;
  var endDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 6).obs;

  chooseDateRangePicker(BuildContext context) async {
    DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year + 100),
      initialDateRange: DateTimeRange(start: startDate.value, end: endDate.value),
    );

    if (picked != null) {
      startDate.value = picked.start;
      endDate.value = picked.end;
    }
  }
}
