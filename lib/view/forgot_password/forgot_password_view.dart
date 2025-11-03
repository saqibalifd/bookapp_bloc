import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/forgot_password/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingColorComponent(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.mediaQueryHeight * .03,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.height,
                ForgotTextSectionWidget(),
                40.height,

                EmailForgotFieldWidget(),
                50.height,
                ForgotButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
