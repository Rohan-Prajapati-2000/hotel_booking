import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'guest_counter.dart';

class SGuestTypeWithCounter extends StatelessWidget {
  const SGuestTypeWithCounter({
    super.key,
    required this.guestType,
  });

  final String guestType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(guestType, style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SGuestCounter()
            ],
          ),
        )
      ],
    );
  }
}

