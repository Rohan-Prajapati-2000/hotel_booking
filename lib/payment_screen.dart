import 'package:flutter/material.dart';

import 'common/widgets/custom_shape/containers/circular_container.dart';
import 'common/widgets/texts/section_heading.dart';
import 'features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'features/shop/screens/payment/widgets/heading_with_price.dart';
import 'features/shop/screens/payment/widgets/hotel_image_name_with_rating.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/sizes.dart';
import 'utils/helpers/helper_functions.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: SSizes.defaultSpace / 1.5,
              vertical: SSizes.defaultSpace / 1.5),
          child: Column(
            children: [
              ImageNameAndRating(
                  hotelName: "Crowne Plaza Greater Noida",
                  hotelLocation: 'Noida, Uttar Pradesh'),
              SizedBox(height: SSizes.spaceBtwItems),
              Row(
                children: [
                  Text('Booking Id :- '),
                  Text("HTL4455",
                      style: TextStyle(fontWeight: FontWeight.normal)),
                ],
              ),
              SizedBox(height: SSizes.spaceBtwItems),
              SRoundedContainer(
                showBorder: true,
                // backgroundColor: dark ? SColors.darkerGrey : SColors.grey,
                backgroundColor: SColors.primaryColor,
                borderColor: SColors.primaryColor,
                padding: EdgeInsets.symmetric(vertical: SSizes.defaultSpace),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text('Check In',
                              style: Theme.of(context).textTheme.titleMedium),
                          Text('15th Jan 2024',
                              style: Theme.of(context).textTheme.bodySmall),
                          Text('Mon 12PM',
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Column(
                        children: [Icon(Icons.arrow_right_alt_outlined)],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text('Check Out',
                              style: Theme.of(context).textTheme.titleMedium),
                          Text('31th Jan 2024',
                              style: Theme.of(context).textTheme.bodySmall),
                          Text('Wed 12PM',
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: SSizes.spaceBtwItems),
              Text('5 Night, 2 Rooms, 2 Guests',
                  style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(height: SSizes.spaceBtwItems),
              Divider(),
              SizedBox(height: SSizes.spaceBtwItems),
              SSectionHeading(title: 'Price :-', showActionButton: false),
              SRoundedContainer(
                showBorder: true,
                backgroundColor: SColors.primaryColor,
                borderColor: SColors.primaryColor,
                padding: EdgeInsets.symmetric(
                    vertical: SSizes.defaultSpace,
                    horizontal: SSizes.defaultSpace / 2),
                child: Column(
                  children: [
                    SizedBox(height: SSizes.spaceBtwItems),
                    HeadingWithPrice(
                        titleHeading: "Booking Price", valuePrice: 1500),
                    SizedBox(height: SSizes.spaceBtwItems),
                    HeadingWithPrice(
                        titleHeading: "Service Tax", valuePrice: 270),
                    SizedBox(height: SSizes.spaceBtwItems),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payable :-',
                            style: Theme.of(context).textTheme.bodyLarge),
                        Text(
                          'INR. 1770/-',
                        )
                      ],
                    ),
                    
                    SizedBox(height: SSizes.spaceBtwItems),
                    Divider(),

                    SBillingPaymentSection()
                  ],
                ),
              ),

              SizedBox(height: SSizes.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: SColors.primaryColor
                  ),
                    onPressed: (){},
                    child: Text("Pay", style: Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white))
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
