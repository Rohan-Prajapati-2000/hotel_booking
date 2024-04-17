import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hotel_booking/common/custom_bottom_navigation/price_with_button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:latlong2/latlong.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widget/hotel_specility.dart';

class SHotelDetailSccreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SBottomPriceWithContinue(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              child: Image(
                  image: AssetImage(SImage.noidaHotel), fit: BoxFit.cover),
            ),
            const SizedBox(height: SSizes.spaceBtwItems),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hotel Name',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .apply(color: Colors.cyanAccent)),
                      Row(
                        children: [
                          Text("INR. 1500",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: Colors.purple)),
                          Text('/night',
                              style: Theme.of(context).textTheme.labelMedium)
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems / 2),
                  Text(
                    "Crowne Plaza Greater Noida",
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      const Icon(Iconsax.location),
                      const SizedBox(width: SSizes.spaceBtwItems / 4),
                      Text('Noida, Uttar Pradesh',
                          style: Theme.of(context).textTheme.labelLarge)
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems / 2),
                  SHotelSpecility(),
                  const SizedBox(height: SSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      const Icon(Iconsax.safe_home4),
                      const SizedBox(width: SSizes.spaceBtwItems/2),
                      Text('Available Room: ', style: Theme.of(context).textTheme.labelMedium),
                      Text("10", style: Theme.of(context).textTheme.labelLarge,),
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems / 2),
                  const Divider(thickness: 2),
                  const SizedBox(height: SSizes.spaceBtwItems / 2),
                  const SSectionHeading(
                      title: 'Description', showActionButton: false),

                  const ReadMoreText(
                    "This is hotel description,"
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered "
                        "alteration in some form, by injected humour, or randomised words which don't look even slightly "
                        "believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't "
                        "anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet"
                        " tend to repeat predefined chunks as necessary, making this the first true generator on the Internet."
                        " It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures,"
                        " to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from "
                        "repetition, injected humour, or non-characteristic words etc."
                        "This is hotel description,"
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered "
                        "alteration in some form, by injected humour, or randomised words which don't look even slightly "
                        "believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't "
                        "anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet"
                        " tend to repeat predefined chunks as necessary, making this the first true generator on the Internet."
                        " It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures,"
                        " to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from "
                        "repetition, injected humour, or non-characteristic words etc.",
                    trimLines: 6,
                    style: TextStyle(fontWeight: FontWeight.normal),
                    trimMode: TrimMode.Line,
                    trimExpandedText: ' Show less',
                    trimCollapsedText: ' Show more',
                    textAlign: TextAlign.justify,
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primaryColor),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: SColors.primaryColor),
                  ),


                  const SizedBox(height: SSizes.spaceBtwItems),
                  const SSectionHeading(title: "Location", showActionButton: false),
                  const SizedBox(height: SSizes.spaceBtwItems/2),
                  Container(
                    height: 250,
                    child: FlutterMap(
                        options: MapOptions(
                            initialCenter: LatLng(28.655833, 77.240833),
                            initialZoom: 15,
                            interactionOptions: InteractionOptions(
                                flags: InteractiveFlag.pinchZoom |
                                    InteractiveFlag.drag,
                                enableScrollWheel: true)),
                        children: [
                          openOpenStreetTileLayer,
                          MarkerLayer(markers: [
                            Marker(
                                point: LatLng(28.655833, 77.240833),
                                width: 60,
                                height: 60,
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.location_pin,
                                  size: 60,
                                  color: Colors.red,
                                )),
                            Marker(
                                point: LatLng(28.4567129, 77.5167252),
                                width: 60,
                                height: 60,
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.location_pin,
                                  size: 60,
                                  color: Colors.red,
                                )),
                            Marker(
                                point: LatLng(28.6322848, 77.219816),
                                width: 60,
                                height: 60,
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.location_pin,
                                  size: 60,
                                  color: Colors.red,
                                )),
                          ])
                        ]),
                  ),

                  const SizedBox(height: SSizes.defaultSpace/2)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TileLayer get openOpenStreetTileLayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
    );
