import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_home/data/server/api_service.dart';
import 'package:macbro_home/domein/entity/for%20banner%20entity/banner_entity.dart';

class HomeController extends GetxController{

  List<BannerProducts> bannersProducts = [];

  late BannerProducts bannerProduct;

  bool isLoading = false;



  @override
  void onInit()async{
    await getBannerProducts();
   super.onInit();
  }

  Future<void> getBannerProducts()async{
    isLoading= true;
    update();
   String?  response = await Network.GET(Network.API_LIST_BANNER,Network.paramsMain());
      if(response!=null){
        print('response  ===== ${response}');
        return _showResponse(response);
      }
      return;
  }

  void _showResponse(String response){
    print("response  ====!==!==!==+!!+ ${response}");
    bannerProduct = bannerProductsFromJson(response);
    bannersProducts.add(bannerProduct);
    isLoading = false;
    update();
  }


}