import 'package:bookapp/bloc/login/login_bloc.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/validation_exceptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailFieldWidget extends StatefulWidget {
  const EmailFieldWidget({super.key});

  @override
  State<EmailFieldWidget> createState() => _EmailFieldWidgetState();
}

class _EmailFieldWidgetState extends State<EmailFieldWidget> {
 final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return BlocBuilder<LoginBloc, LoginStates>(
           buildWhen: (current, previous) => false,
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {
            // Dispatching EmailChanged event when email input changes
            context.read<LoginBloc>().add(EmailChanged(email: value));
          },
          focusNode: focusNode,
             keyboardType: TextInputType
              .emailAddress,
              textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            hintText: loc.email,
            prefixIcon: Icon(AppIcons.email),
          ),
           validator: (value) {
            if (value!.isEmpty) {
              return loc.email;
            }

            if (!value.emailValidator()) {
              return loc.emailIsNotCorrect;
            }
            return null;
          },
        );
      },
    );
  }
}
