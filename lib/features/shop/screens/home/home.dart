import 'package:flutter/material.dart';
import 'package:hotel_booking/common/widgets/custom_shape/containers/circular_container.dart';
import 'package:hotel_booking/common/widgets/texts/section_heading.dart';
import 'package:hotel_booking/utils/constants/colors.dart';
import 'package:hotel_booking/utils/constants/sizes.dart';
import 'package:hotel_booking/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/layout/grid_layout.dart';
import 'widgets/home_search_bar.dart';
import 'widgets/s_recommended_hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotel Booking"),
        backgroundColor: SColors.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Search Bar
            SSearchBar(),

            SizedBox(height: SSizes.spaceBtwItems),

            /// Section Heading
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
              child: SSectionHeading(title: "Recommended", showActionButton: true),
            ),

            SizedBox(height: SSizes.spaceBtwItems/2),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace/2),
              child: SizedBox(
                height: 285,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (_, index){
                    return SRoundedContainer(
                      height: 290,
                      width:250,
                      radius: 20,
                      backgroundColor: dark ? SColors.primaryColor : SColors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(SSizes.defaultSpace/2),
                        child: SRecommendedHotel(),
                      ),
                    );
                  }, separatorBuilder: (_, index){
                  return SizedBox(width: SSizes.spaceBtwItems/2);
                },),
              ),
            ),

            const SizedBox(height: SSizes.spaceBtwItems),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
              child: SSectionHeading(title: "Top Hotels", showActionButton: true),
            ),

            const SizedBox(height: SSizes.spaceBtwItems),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace/2),
              child: SGridLayout(
                  itemCount: 10,
                  itemBuilder: (_, index){
                return  SRoundedContainer(
                  height: 290,
                  width:250,
                  radius: 20,
                  backgroundColor: dark ? SColors.darkerGrey : SColors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(SSizes.defaultSpace/2),
                    child: SRecommendedHotel(),
                  ),
                );
              }),
            ),



          ],
        ),
      )
    );
  }
}

