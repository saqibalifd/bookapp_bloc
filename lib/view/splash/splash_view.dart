import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/services/session_manager/session_controller.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateUser();
  }

  void navigateUser() async {
    await Future.delayed(Duration(seconds: 1), () => SessionController());
    SessionController sessionController = SessionController();
    await sessionController.getUserFromPreference();

    if (SessionController.isOnBoardingPlayed == false ||
        SessionController.isOnBoardingPlayed == null) {
      Navigator.pushReplacementNamed(context, RoutesName.onBoarding);
    } else if (SessionController.isLogin == true) {
      Navigator.pushReplacementNamed(context, RoutesName.home);
    } else {
      Navigator.pushReplacementNamed(context, RoutesName.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {},
          child: Text('Splash Screen'),
        ),
      ),
    );
  }
}
