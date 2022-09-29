import 'package:http/http.dart';

class Network {
  static String BASEURL = "api.client.macbro.uz";

  static Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8'
  };

  /* Http Apis */

  static String API_LIST_BANNER = "/v1/banner";

  static String API_CATEGORY = "/v1/category";


  static String API_NEWS = "/v1/featured-list";
  /* Http Requests */

  static Future<Response?> GET(String api, Map<String, dynamic> params) async {
    var uri = Uri.https(BASEURL, api, params); // http or https
    var response = await get(uri, headers: headers);
    if (response.statusCode == 200) {
      return response;
    }
    return null;
  }
  static Map<String, dynamic> paramsMain() {
    Map<String, dynamic> params = {};
    return params;
  }

}
