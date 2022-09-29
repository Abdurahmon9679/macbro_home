import 'dart:convert';
import 'package:get/get.dart';
import 'package:macbro_home/data/server/api_service.dart';
import 'package:macbro_home/domein/entity/category_entity/categoty_model.dart';
import 'package:macbro_home/domein/entity/for%20banner%20entity/banner_entity.dart';
import 'package:macbro_home/domein/entity/new_products/new.dart';

class HomeController extends GetxController {
  News newProductModels = News();

  List<Products>? products = [];
  BannerProduct bannersProducts = BannerProduct();

  ProductCategory category = ProductCategory();

  bool isLoading = false;

 int selectIndex= 0;


 void onChange(index){
   if(selectIndex !=index){
     selectIndex = index;
     update();
   }
 }

  final List <String> bannerImages = [];

  bool isLiked = true;

  @override
  void onInit()  {
     getNewProduct();
     getCategory();
     getBannerProduct();
  }

  Future<void> getBannerProduct() async {
    isLoading = true;
    update();
    Network.GET(Network.API_LIST_BANNER, Network.paramsMain()).then((response) {
      bannersProducts = BannerProduct.fromJson(jsonDecode(response!.body));
      for (var images in bannersProducts.banners!) {
        if(images.type =='image'){
          bannerImages.add(images.image);
        }
        update();
      }
      isLoading = false;
      update();
    });
  }

  Future<void> getNewProduct() async {
    isLoading = true;
    update();
    Network.GET(Network.API_NEWS, Network.paramsMain()).then((response) {
      newProductModels = News.fromJson(jsonDecode(response!.body));
      products = newProductModels.featuredLists?.first.products;
      isLoading = false;
      update();
    });
  }

  Future<void> getCategory() async {
    isLoading = true;
    update();
    Network.GET(Network.API_CATEGORY, Network.paramsMain()).then((response) {
      category = ProductCategory.fromJson(jsonDecode(response!.body));
      isLoading = false;
      update();
    });
  }
}
