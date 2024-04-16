import 'package:flutter/material.dart';
import 'package:hotel_booking/utils/constants/colors.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: Theme.of(context).textTheme.headlineMedium!.apply(color: SColors.primaryColor)),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: SSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                /// Logo title & subtitle
                SLoginHeader(),

                /// Form
                SLoginForm(),

                /// Divider
                SFormDivider(dividerText: SText.orSignInWith),
                SizedBox(height: SSizes.spaceBtwItems),

                /// Footer
                SSocialButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }
}