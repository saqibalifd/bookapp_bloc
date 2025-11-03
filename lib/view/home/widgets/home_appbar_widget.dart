import 'package:bookapp/cubit/theme/theme_cubit.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/config/images/app_images.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: GestureDetector(
        onTap: () => Navigator.pushNamed(context, RoutesName.favourite),
        child: Icon(AppIcons.favourite, color: theme.colorScheme.primary),
      ),
      actions: [
        BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeMode) {
            return AdvancedSwitch(
              onChanged: (_) => context.read<ThemeCubit>().toggleTheme(),
              initialValue: themeMode == ThemeMode.dark,
              activeImage: AssetImage(AppImages.darkModeSwitchBackground),
              inactiveImage: AssetImage(AppImages.lightModeSwitchBackground),
            );
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.mediaQueryWidth * 0.05,
          ),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, RoutesName.profile),
            child: const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/front-view-business-woman-suit_23-2148603018.jpg?semt=ais_hybrid&w=740&q=80',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
