import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/utils/constants/colors.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SBottomSheetDateRangePicker extends StatelessWidget{
  final _datePickerController = DateRangePickerController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SfDateRangePicker(
      backgroundColor: SColors.primaryColor,
      selectionMode: DateRangePickerSelectionMode.range,
      showActionButtons: true,
      startRangeSelectionColor: Colors.blue,
      endRangeSelectionColor: Colors.blue,
      rangeSelectionColor: Colors.blue,

      controller: _datePickerController,
      onSubmit: (Object? selectedDate){
        selectedDate = _datePickerController;
        print(_datePickerController.selectedRange);
        Navigator.pop(context);
      },

      onCancel: (){
        _datePickerController.selectedRange = null;
        print(_datePickerController);
        Navigator.pop(context);
      },

    ));
  }

}