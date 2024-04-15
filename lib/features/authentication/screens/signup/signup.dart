import 'package:flutter/material.dart';
import 'package:hotel_booking/features/authentication/screens/signup/widgets/signup_form.dart';

import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(SText.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: SSizes.spaceBtwSections),

              /// From
              const SSignupForm(),

              const SizedBox(height: SSizes.spaceBtwInputField),

              /// Divider
              const SFormDivider(dividerText: SText.orSignUpWith),

              const SizedBox(height: SSizes.spaceBtwInputField),

              /// Social Button
              const SSocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}
