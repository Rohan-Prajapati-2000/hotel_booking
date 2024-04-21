import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_booking/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:hotel_booking/common/widgets/images/s_circular_image.dart';
import 'package:hotel_booking/utils/constants/image_strings.dart';
import 'package:hotel_booking/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: SSizes.defaultSpace / 1.5,
              vertical: SSizes.defaultSpace / 1.5),
          child: Column(
            children: [
              SRoundedContainer(
                height: 100,
                backgroundColor: Colors.grey,
                radius: 20,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                                child: Image.asset(SImage.noidaHotel,
                                    height: 80, width: 80, fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "Crowne Plaza Greater Noida",
                              style: Theme.of(context).textTheme.titleLarge,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                            SizedBox(height: SSizes.spaceBtwItems/2),

                            Row(
                              children: [
                                const Icon(Iconsax.location),
                                const SizedBox(width: SSizes.spaceBtwItems / 4),
                                Text('Noida, Uttar Pradesh',
                                    style: Theme.of(context).textTheme.labelLarge)
                              ],
                            ),

                            SizedBox(height: SSizes.spaceBtwItems/2),

                            Row(
                              children: [
                                Icon(Iconsax.star1, color: Colors.yellow),
                                Icon(Iconsax.star1, color: Colors.yellow),
                                Icon(Iconsax.star1, color: Colors.yellow),
                                Icon(Iconsax.star1, color: Colors.yellow),
                                Icon(Iconsax.star1),

                              ],
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
