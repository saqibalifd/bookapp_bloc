import 'package:bookapp/bloc/logout/logout_bloc.dart';
import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/cubit/local_user/local_user_cubit.dart';
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
  late LocalUserCubit _localUserCubit;
  @override
  void initState() {
    super.initState();
    // emailController.text = user!.user!.email;
    // aboutController.text = user!.user!.phone;
    _logoutBloc = LogoutBloc(getIt());
    _localUserCubit = LocalUserCubit();
    _localUserCubit.loadUser();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _logoutBloc.close();
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
          create: (context) => _localUserCubit,
          child: BlocProvider(
            create: (context) => _logoutBloc,
            child: BlocBuilder<LocalUserCubit, LocalUserState>(
              builder: (context, state) {
                final user = state.user;
                if (user == null || user.user == null) {
                  return const Center(child: LoadingWidget());
                }
                emailController.text = user.user!.email.toString();
                aboutController.text = user.user!.address!.city.toString();

                return SingleChildScrollView(
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
                        ProfileEmailFieldWidget(
                          emailController: emailController,
                        ),
                        10.height,
                        ProfileAboutFieldWidget(
                          aboutcontroller: aboutController,
                        ),
                        30.height,
                        LogoutButtonWidget(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
