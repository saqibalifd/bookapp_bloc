import 'package:bookapp/bloc/user/user_bloc.dart';
import 'package:bookapp/config/component/loading_widget.dart';
import 'package:bookapp/cubit/theme/theme_cubit.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/config/images/app_images.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/data/response/response.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/utils/extensions/network_image_extension.dart';
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
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              switch (state.user!.status) {
                case Status.loading:
                  return const Center(child: LoadingWidget());
                case Status.error:
                  return const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Center(child: Icon(AppIcons.imageBroken)),
                  );
                case Status.completed:
                  if (state.user?.data?.user?.profileImage == null) {
                    return const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Center(child: Icon(AppIcons.imageBroken)),
                    );
                  }
                  return GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, RoutesName.profile),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: state.user!.data!.user!.profileImage
                          .toString()
                          .simpleNetworkImage(
                            height: context.mediaQueryHeight * .3,
                            fit: BoxFit.cover,
                          ),
                    ),
                  );
              }
            },
          ),
        ),
      ],
    );
  }
}
