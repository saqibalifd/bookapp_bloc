import 'package:bookapp/bloc/login/login_bloc.dart';
import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/dependencies_injection/locator.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/login/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginBloc _loginBloc;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc(authApiRepository: getIt());
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return FloatingColorComponent(
      child: BlocProvider(
        create: (_) => _loginBloc,
        child: Form(
          key: _formKey,
          child: Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.mediaQueryHeight * .03,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.height,
                      TextSectionWidget(),
                      40.height,
                      EmailFieldWidget(),
                      5.height,
                      PasswordFieldWidget(),
                      20.height,
                      ForgotPasswordTextWidget(),
                      50.height,
                      LoginButtonWidget(formKey: _formKey),
                      40.height,
                      OrTextWidget(),
                      40.height,
                      GoogleLoginButtonWidget(),
                    ],
                  ),
                ),
              ),
            ),
            persistentFooterAlignment: AlignmentDirectional.center,
            persistentFooterDecoration: BoxDecoration(
              color: Colors.transparent,
            ),
            persistentFooterButtons: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: context.mediaQueryHeight * .03,
                ),
                child: Text(
                  loc.dontHaveAnAccount,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: context.mediaQueryHeight * .03,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.signup);
                  },
                  child: Text(
                    loc.signUp,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
