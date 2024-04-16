import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/validators/validator.dart';
import '../../password_configuration/forget_password.dart';
import '../../signup/signup.dart';

class SLoginForm extends StatelessWidget {
  const SLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwItems),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: SText.email),
            ),
            const SizedBox(height: SSizes.spaceBtwInputField),

            /// Password
            TextFormField(
              validator: (value) =>
                  SValidator.validateEmptyText('Password', value),
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: SText.password,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.eye_slash),
                ),
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputField / 2),

            // Remember Me and Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                      activeColor: SColors.primaryColor,
                    ),
                    const Text(SText.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(SText.forgetPassword,
                        style: TextStyle(color: SColors.primaryColor))),
              ],
            ),
            const SizedBox(height: SSizes.spaceBtwSections / 2),

            /// Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: SColors.primaryColor,
                        side: BorderSide(width: 0)),
                    onPressed: () {},
                    child: const Text(SText.signIn,
                        style: TextStyle(color: Colors.white)))),
            const SizedBox(height: SSizes.spaceBtwItems),

            /// create account button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(side: BorderSide(width: 0)),
                    onPressed: () => Get.to(() => SignupScreen()),
                    child: const Text(SText.createAccount)))
          ],
        ),
      ),
    );
  }
}
