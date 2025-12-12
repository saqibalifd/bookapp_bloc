import 'dart:convert';
import 'package:bookapp/models/login/loginModel.dart';
import 'package:bookapp/models/signup/signupModel.dart';
import 'package:bookapp/services/storage/local_storage.dart';
import 'package:flutter/material.dart';

class SessionController {
  final LocalStorage sharedPreferenceClass = LocalStorage();

  static final SessionController _session = SessionController._internal();

  static bool? isLogin;
  static bool? isOnBoardingPlayed; // NEW

  static LoginModel user = LoginModel();
  static SignupModel userSignup = SignupModel();

  SessionController._internal() {
    isLogin = false;
    isOnBoardingPlayed = true; // default = first time user
  }

  factory SessionController() {
    return _session;
  }

  // Save user login info
  Future<void> saveUserInPreference(dynamic user) async {
    await sharedPreferenceClass.setValue('token', jsonEncode(user));
    await sharedPreferenceClass.setValue('isLogin', 'true');
  }

  // Save onboarding state when user completes it
  Future<void> completeOnBoarding() async {
    await sharedPreferenceClass.setValue('onBoarding', 'played');
    SessionController.isOnBoardingPlayed = false;
  }

  // Read saved session
  Future<void> getUserFromPreference() async {
    try {
      String? userData = await sharedPreferenceClass.readValue('token');
      String? loginFlag = await sharedPreferenceClass.readValue('isLogin');
      String? onBoardingFlag = await sharedPreferenceClass.readValue(
        'onBoarding',
      );

      // Decode login data
      if (userData != null && userData.isNotEmpty) {
        SessionController.user = LoginModel.fromJson(jsonDecode(userData));
        SessionController.userSignup = SignupModel.fromJson(
          jsonDecode(userData),
        );
      }

      // Login flag
      SessionController.isLogin = (loginFlag == 'true');
      SessionController.isOnBoardingPlayed = (onBoardingFlag == 'played');
    } catch (e) {
      debugPrint("Error reading session: $e");
    }
  }
}
