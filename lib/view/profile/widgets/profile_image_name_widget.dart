import 'package:bookapp/bloc/user/user_bloc.dart';
import 'package:bookapp/config/component/loading_widget.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/data/response/status.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/utils/extensions/network_image_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProfileImageNameWidget extends StatelessWidget {
  const ProfileImageNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        switch (state.user!.status) {
          case Status.loading:
            return const Center(child: LoadingWidget());

          case Status.error:
            return Center(child: Text(state.user!.message ?? "Error"));

          case Status.completed:
            // final user = state.user!.data!.user!;
            if (state.user!.data == null) {
              return const Center(child: Text("User Not found"));
            }
            final userData = state.user!.data!.user!;
            return Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  child: userData.profileImage.toString().simpleNetworkImage(
                    height: context.mediaQueryHeight * .3,
                    fit: BoxFit.cover,
                  ),
                ),
                10.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      userData.name.toString(),
                      style: theme.textTheme.titleMedium,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AppIcons.penIcon),
                    ),
                  ],
                ),
              ],
            );
        }
      },
    );
  }
}
