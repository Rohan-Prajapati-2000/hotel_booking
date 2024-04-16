import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/images/s_rounded_image.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SRecommendedHotel extends StatelessWidget {
  const SRecommendedHotel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Hotel Thumbnail Image
        SRoundedImage(imageUrl: SImage.noidaHotel),

        const SizedBox(height: SSizes.spaceBtwItems/4),

        /// Hotel Name
        Text("Crowne Plaza Grater Noida", style: Theme.of(context).textTheme.labelLarge, maxLines: 1, overflow: TextOverflow.ellipsis,),

        const SizedBox(height: SSizes.spaceBtwItems/4),

        /// Location Name and State
        Row(
          children: [
            Icon(Iconsax.location),
            SizedBox(width: SSizes.spaceBtwItems/4),
            Text('Noida, Uttar Pradesh', style: Theme.of(context).textTheme.labelLarge)
          ],
        ),

        const SizedBox(height: SSizes.spaceBtwItems/4),

        /// Rating & Price
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Rating
            Row(
              children: [
                Icon(Iconsax.star5),
                SizedBox(width: SSizes.spaceBtwItems/4),
                Text('4.5')
              ],
            ),

            Row(
              children: [
                /// Price
                Text("Rs. ", style: Theme.of(context).textTheme.bodySmall),
                Text("1100 "),
                Text("/Night", style: Theme.of(context).textTheme.labelSmall),
              ],
            )
          ],
        )
      ],
    );
  }
}
