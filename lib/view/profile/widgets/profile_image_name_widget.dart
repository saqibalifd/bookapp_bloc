import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/cubit/local_user/local_user_cubit.dart';
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

    return BlocBuilder<LocalUserCubit, LocalUserState>(
      builder: (context, state) {
        final user = state.user;

        // still loading
        if (user == null || user.user == null) {
          return const Center(child: LoadingWidget());
        }

        return Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.grey.shade300,
              child: user.user!.profileImage.simpleNetworkImage(
                height: context.mediaQueryHeight * .3,
                fit: BoxFit.cover,
              ),
            ),
            10.height,
            Text(user.user!.name, style: theme.textTheme.titleMedium),
          ],
        );
      },
    );
  }
}
