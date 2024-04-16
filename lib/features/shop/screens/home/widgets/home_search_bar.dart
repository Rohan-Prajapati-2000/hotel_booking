import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shape/curved_edges/primary_header_container.dart';
import '../../../../../utils/constants/sizes.dart';

class SSearchBar extends StatelessWidget {
  const SSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SPrimaryHeaderContainer(
      child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: SSizes.defaultSpace, right: SSizes.defaultSpace, top: SSizes.defaultSpace, bottom: SSizes.defaultSpace*2),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.location), labelText: 'Location'),
                ),
              ],
            ),
          )),
    );
  }
}
