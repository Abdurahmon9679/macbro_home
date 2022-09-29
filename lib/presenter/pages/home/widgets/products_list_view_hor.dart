import 'package:flutter/material.dart';
import 'package:macbro_home/domein/entity/new_products/new.dart';
import 'package:macbro_home/presenter/pages/home/widgets/products_card.dart';

class ProductsList extends StatelessWidget {
  final List<Products>? newProducts;

  final bool? isLiked;

  final bool saleOn;

  const ProductsList({
    Key? key,
    required this.saleOn,
    required this.newProducts,
    this.isLiked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return ProductCard(
            isLiked: isLiked,
            img: newProducts?[index].image,
            saleOn: saleOn,
            price: newProducts?[index].cheapestPrice.toString(),
            brandOrModelName: newProducts?[index].name,
          );
        },
      ),
    );
  }
}
