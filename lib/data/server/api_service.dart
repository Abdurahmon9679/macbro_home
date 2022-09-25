import 'dart:convert';
import 'package:http/http.dart';
import 'package:macbro_home/domein/entity/for%20banner%20entity/banner_entity.dart';

class Network {
  static String BASEURL = "api.client.macbro.uz";

  static Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8'
  };

  /* Http Apis */

  static String API_LIST_BANNER = "/v1/banner";

  static String API_CATEGORY = "/v1/category";
  /* Http Requests */

  static Future<String?> GET(String api, Map<String, dynamic> params) async {
    var uri = Uri.https(BASEURL, api, params); // http or https
    var response = await get(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }
  static Map<String, dynamic> paramsMain() {
    Map<String, dynamic> params = {};
    return params;
  }

  /* Http Parsing */

  static List<BannerProducts> parseBannerList(String response) {
    dynamic json = jsonDecode(response);
    var data = List<BannerProducts>.from(json.map((x) => BannerProducts.fromJson(x)));
    return data;
  }
}
