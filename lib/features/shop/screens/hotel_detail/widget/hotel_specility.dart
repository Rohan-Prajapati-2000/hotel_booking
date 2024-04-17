import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import 'icon_with_text.dart';

class SHotelSpecility extends StatelessWidget {
  const SHotelSpecility({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SIconText(icon: Icons.bed, title: '2 Beds'),
        SIconText(icon: Icons.bathroom, title: '2 Bath'),
        SIconText(icon: Icons.wifi, title: 'Wifi'),
        SIconText(icon: Icons.square, title: '2123 Sqft'),


      ],
    );
  }
}

