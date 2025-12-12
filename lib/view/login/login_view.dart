import 'package:bookapp/bloc/login/login_bloc.dart';
import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/dependencies_injection/locator.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/flashbar_extension.dart';
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc(getIt());
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return FloatingColorComponent(
      child: BlocProvider(
        create: (_) => _loginBloc,
        child: Scaffold(
          body: SafeArea(
            child: BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state is LoginError) {
                  context.flushBarErrorMessage(message: state.message);
                }
        
                if (state is LoginSuccess) {
                  context.flushBarSuccessMessage(message: "Login Successful");
                  Navigator.pushReplacementNamed(context, "/home");
                }
              },
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  return SingleChildScrollView(
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
                          EmailFieldWidget(emailController: emailController),
                          5.height,
                          PasswordFieldWidget(
                            passwordController: passwordController,
                          ),
                          20.height,
                          ForgotPasswordTextWidget(),
                          50.height,
                          LoginButtonWidget(
                            emailController: emailController,
                            passwordController: passwordController,
                          ),
                          40.height,
                          OrTextWidget(),
                          40.height,
                          GoogleLoginButtonWidget(),
                        ],
                      ),
                    ),
                  );
                },
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
    );
  }
}
