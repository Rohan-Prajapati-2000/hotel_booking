import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SGuestCounter extends StatelessWidget {
  const SGuestCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Iconsax.minus, size: 30,)),
        Text("2", style: Theme.of(context).textTheme.titleSmall),
        IconButton(onPressed: () {}, icon: Icon(Iconsax.add, size: 30)),
      ],
    );
  }
}
