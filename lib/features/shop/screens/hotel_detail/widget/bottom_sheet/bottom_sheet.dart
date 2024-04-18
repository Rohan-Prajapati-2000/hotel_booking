import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_booking/common/widgets/texts/section_heading.dart';
import 'package:hotel_booking/utils/constants/sizes.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/text_strings.dart';
import 'widgets/guest_type_with_counter.dart';

class SBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SSectionHeading(
              title: "Select rooms and person", showActionButton: false),
          SizedBox(height: SSizes.spaceBtwItems / 2),
          SGuestTypeWithCounter(guestType: 'Adult'),
          SizedBox(height: SSizes.spaceBtwItems/2),
          SGuestTypeWithCounter(guestType: 'Children'),
          SizedBox(height: SSizes.spaceBtwItems/2),
          SGuestTypeWithCounter(guestType: 'Room'),
          SizedBox(height: SSizes.spaceBtwItems),

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: SColors.primaryColor,
                      side: BorderSide(width: 0)),
                  onPressed: () {},
                  child: const Text(SText.scontinue,
                      style: TextStyle(color: Colors.white)))),

        ],
      ),
    );
  }
}


