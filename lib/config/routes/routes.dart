import 'package:bookapp/config/routes/route_names.dart';
import 'package:flutter/material.dart';

import '../../view/view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashView(),
        );
      case RoutesName.onBoarding:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnboardingView(),
        );

      case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginView(),
        );
      case RoutesName.signup:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignupView(),
        );
      case RoutesName.forgotPassword:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ForgotPasswordView(),
        );
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => HomeView());
      case RoutesName.detail:
        return MaterialPageRoute(
          builder: (BuildContext context) => DetailView(),
        );
      case RoutesName.favourite:
        return MaterialPageRoute(
          builder: (BuildContext context) => FavouriteView(),
        );
      case RoutesName.preview:
        return MaterialPageRoute(
          builder: (BuildContext context) => PreviewView(),
        );
      case RoutesName.profile:
        return MaterialPageRoute(
          builder: (BuildContext context) => ProfileView(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(child: Text('No route defined')),
            );
          },
        );
    }
  }
}
