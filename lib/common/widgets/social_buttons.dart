import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/authentication/controllers/login/login_controller.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';

class SSocialButtons extends StatelessWidget {
  const SSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              // onPressed: () => controller.googleSignIn(),
            onPressed: (){},
              icon: const Image(
                  height: SSizes.iconMd,
                  width: SSizes.iconMd,
                  image: AssetImage(SImage.google))),
        ),
        const SizedBox(width: SSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: SColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  height: SSizes.iconMd,
                  width: SSizes.iconMd,
                  image: AssetImage(SImage.facebook))),
        ),
      ],
    );
  }
}
