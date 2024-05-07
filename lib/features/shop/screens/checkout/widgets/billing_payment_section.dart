import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shape/containers/circular_container.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SBillingPaymentSection extends StatelessWidget{
  const SBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        SizedBox(height: SSizes.spaceBtwItems/2),

        Row(
          children: [
            SRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? SColors.light : SColors.white,
              padding: EdgeInsets.all(SSizes.sm),
              child: Image(image: AssetImage(SImage.payPal), fit: BoxFit.contain),
            ),
            SizedBox(width: SSizes.spaceBtwItems/2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge)
          ],
        )

      ],
    );
  }

}