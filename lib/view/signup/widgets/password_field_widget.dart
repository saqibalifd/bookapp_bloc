import 'package:bookapp/bloc/signup/signup_bloc.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/cubit/visibility.dart/visibility_cubit.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({super.key});

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
       final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return BlocProvider(
      create: (_) => VisibilityCubit(),
      child: BlocBuilder<VisibilityCubit, bool>(
        builder: (context, isObsecure) {
          return BlocBuilder<SignupBloc, SignupState>(
            buildWhen: (current, previous) => false,
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {
            context.read<SignupBloc>().add(PasswordChanged(password: value));
          },
          focusNode: focusNode,
             keyboardType: TextInputType
              .visiblePassword,
              textInputAction: TextInputAction.next,
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
                 validator: (value) {
            if (value!.isEmpty) {
              return loc.enterPassword;
            }
            if (value.length < 6) {
              return loc.pleaseEnterGreateSixChar;
            }
            return null;
          },
              );
            },
          );
        },
      ),
    );
  }
}
