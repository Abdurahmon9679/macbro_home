import 'package:flutter/material.dart';
import 'package:macbro_home/domein/entity/for%20banner%20entity/banner_entity.dart';
import 'package:macbro_home/presenter/pages/home/widgets/products_card.dart';

class ProductsList extends StatelessWidget {
  final List <BannerProducts> banners;

  final String price;
  final String brandOrModelName;

  final bool saleOn;

  const ProductsList(
      {Key? key,
        required this.saleOn,
        required this.price,
        required this.brandOrModelName,
        required this.banners})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: banners.length,
        itemBuilder: (context, index) {
          return ProductCard(
            banner:banners[index],
            saleOn: saleOn,
            price: price,
            brandOrModelName: brandOrModelName,);
        },
      ),
    );
  }
}