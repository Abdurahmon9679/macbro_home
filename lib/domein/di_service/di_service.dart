import 'package:get/get.dart';
import 'package:macbro_home/presenter/pages/home/controller/home_controller.dart';

class DIService {
  static Future<void> init() async {
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}