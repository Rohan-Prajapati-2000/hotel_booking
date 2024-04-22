import 'package:flutter/material.dart';
import 'package:hotel_booking/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shape/containers/circular_container.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class ImageNameAndRating extends StatelessWidget {
  const ImageNameAndRating({
    super.key,
    required this.hotelName,
    required this.hotelLocation,
    this.backgroundColor = SColors.primaryColor
  });

  final String hotelName;
  final String hotelLocation;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SRoundedContainer(
      height: 100,
      backgroundColor: backgroundColor,
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
                    hotelName,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: SSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      const Icon(Iconsax.location),
                      const SizedBox(width: SSizes.spaceBtwItems / 4),
                      Text(hotelLocation,
                          style: Theme.of(context).textTheme.labelLarge)
                    ],
                  ),
                  SizedBox(height: SSizes.spaceBtwItems / 2),
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
    );
  }
}
