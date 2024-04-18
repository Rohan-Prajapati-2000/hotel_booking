import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shape/curved_edges/primary_header_container.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/date_range_controller.dart';

class SHomeSearchBar extends StatelessWidget {
  final dateRangeController = Get.put(SDateRangeController());

  @override
  Widget build(BuildContext context) {
    return SPrimaryHeaderContainer(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.location),
                  labelText: 'Location',
                ),
              ),
              SizedBox(height: SSizes.spaceBtwItems / 2),
              GestureDetector(
                onTap: () => dateRangeController.chooseDateRangePicker(context),
                child: Container(
                  height: 60,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(SSizes.inputFieldRadius),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                      ),
                      SizedBox(width: SSizes.spaceBtwItems),
                      Obx(() {
                        return Text(
                            'From ${dateRangeController.startDate.value.day}-${dateRangeController.startDate.value.month}-${dateRangeController.startDate.value.year} To ${dateRangeController.endDate.value.day}-${dateRangeController.endDate.value.month}-${dateRangeController.endDate.value.year}');
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
