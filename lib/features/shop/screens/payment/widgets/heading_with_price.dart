import 'package:flutter/material.dart';

class HeadingWithPrice extends StatelessWidget {
  const HeadingWithPrice({
    super.key, required this.titleHeading, required this.valuePrice,
  });

  final String titleHeading;
  final int valuePrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$titleHeading :-', style: Theme.of(context).textTheme.bodyLarge),
        Text('INR. $valuePrice/-', style: Theme.of(context).textTheme.bodyLarge)
      ],
    );
  }
}
