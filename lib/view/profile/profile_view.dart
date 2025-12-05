import 'package:bookapp/bloc/logout/logout_bloc.dart';
import 'package:bookapp/bloc/user/user_bloc.dart';
import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/dependencies_injection/dependencies_injection.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/profile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();

  late LogoutBloc _logoutBloc;
  late UserBloc _userBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _logoutBloc = LogoutBloc(getIt());
    _userBloc = UserBloc(userApiRepository: getIt());
    _userBloc.add(FetchUser());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _logoutBloc.close();
    _userBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingColorComponent(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: ProfileAppbarWidget(),
        ),

        body: BlocProvider(
          create: (context) => _userBloc,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.mediaQueryHeight * .03,
              ),
              child: Column(
                children: [
                  20.height,
                  ProfileImageNameWidget(),
                  10.height,
                  ProfileEmailFieldWidget(emailController: emailController),
                  10.height,
                  ProfileAboutFieldWidget(aboutcontroller: aboutController),
                  30.height,
                  BlocProvider(
                    create: (context) => _logoutBloc,
                    child: LogoutButtonWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
