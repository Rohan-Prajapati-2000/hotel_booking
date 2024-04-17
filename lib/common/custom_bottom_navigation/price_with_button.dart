import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking/features/shop/screens/hotel_detail/widget/bottom_sheet/bottom_sheet.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';
import '../../utils/helpers/helper_functions.dart';

class SBottomPriceWithContinue extends StatelessWidget {
  const SBottomPriceWithContinue({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      height: kBottomNavigationBarHeight * 1.2,
      padding: EdgeInsets.symmetric(
          horizontal: SSizes.defaultSpace / 2,
          vertical: SSizes.defaultSpace / 4),
      decoration: BoxDecoration(
          color: dark ? SColors.primaryColor : Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(SSizes.cardRadiusLg),
            topRight: Radius.circular(SSizes.cardRadiusLg),
          )),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Price', style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(height: SSizes.spaceBtwItems / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('INR. 1500',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .apply(color: Colors.purple)),
                    Text('/month',
                        style: Theme.of(context).textTheme.labelSmall)
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                dark ? Colors.blue : SColors.primaryColor,
                            side: BorderSide(width: 0)),
                        onPressed: () => showModalBottomSheet(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25),
                                  )),
                              context: context,
                              builder: (BuildContext context) {
                                return SBottomSheet();
                              },
                            ),
                        child: const Text(SText.scontinue,
                            style: TextStyle(color: Colors.white)))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
