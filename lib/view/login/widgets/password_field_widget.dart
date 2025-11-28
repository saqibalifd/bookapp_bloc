import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/cubit/visibility.dart/visibility_cubit.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordFieldWidget extends StatelessWidget {
  final TextEditingController passwordController;
  const PasswordFieldWidget({super.key,required this.passwordController});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (_) => VisibilityCubit(),
      child: BlocBuilder<VisibilityCubit, bool>(
        builder: (context, isObsecure) {
          return TextFormField(
            controller:passwordController ,
            obscureText: isObsecure,
            decoration: InputDecoration(
              hintText: loc.password,
              prefixIcon: Icon(AppIcons.lock),

              suffixIcon: IconButton(
                onPressed: () =>
                    context.read<VisibilityCubit>().toggleVisibility(),
                icon: Icon(
                  isObsecure ? AppIcons.visibilityOff : AppIcons.visibility,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
