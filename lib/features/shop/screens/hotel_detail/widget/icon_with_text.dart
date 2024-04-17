import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class SIconText extends StatelessWidget {
  const SIconText({
    super.key, required this.icon, required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: SSizes.spaceBtwItems/2),
        Text(title, style: Theme.of(context).textTheme.bodySmall,)
      ],
    );
  }
}