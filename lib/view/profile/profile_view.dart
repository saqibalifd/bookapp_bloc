import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/profile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingColorComponent(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: ProfileAppbarWidget(),
        ),

        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.mediaQueryHeight * .03,
            ),
            child: Column(
              children: [
                20.height,
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/front-view-business-woman-suit_23-2148603018.jpg?semt=ais_hybrid&w=740&q=80',
                  ),
                ),
                10.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Mark Hanery', style: theme.textTheme.titleMedium),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.penIcon),
                    ),
                  ],
                ),
                10.height,
                ProfileEmailFieldWidget(),
                10.height,
                ProfileAboutFieldWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
