class ApiEndpoints {
  static const String baseUrl =
      "https://675c38dc-686a-4ae9-86a0-3fdeeec97f93.mock.pstmn.io/";
  static const String reqresBAseUrl = "https://reqres.in/";

  static const String reqresLogin = "api/login";
  static const String reqresSignup = "api/register";

  static const String currentUser = "${reqresBAseUrl}api/users/2";
  static const String userProfile = "${baseUrl}auth/userProfile";
  static const String login = "${baseUrl}auth/signIn";
  static const String signup = "${baseUrl}auth/signUp";
  static const String forgotPassword = "${baseUrl}auth/forgetPassword";
  static const String getBooks = "${baseUrl}books";
}
