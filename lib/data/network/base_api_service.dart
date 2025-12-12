/// Abstract class for defining base API services.
abstract class BaseApiServices {
  Future<dynamic> getApi(String url, {Map<String, String>? headers});

  Future<dynamic> postApi(String url, dynamic data);
  Future<dynamic> putApi(String url, dynamic data);
  Future<dynamic> deleteApi(String url);
}
