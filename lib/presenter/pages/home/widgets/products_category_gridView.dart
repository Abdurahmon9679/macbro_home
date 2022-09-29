import 'package:flutter/material.dart';
import 'package:macbro_home/domein/entity/category_entity/categoty_model.dart';
import 'package:macbro_home/presenter/pages/home/widgets/brand_or_model_name.dart';
import 'package:macbro_home/presenter/utils/app_colors.dart';

class ProductsCategoryWidget extends StatelessWidget {

  final ProductCategory? productCat;


  const ProductsCategoryWidget({Key? key, this.productCat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: productCat?.categories?.length ?? 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.whiteColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  Image(
                    height: 90,
                    image: NetworkImage(productCat?.categories?[index].image ??''),
                    fit: BoxFit.cover,
                  ),
                  BrandOrModelName(
                    brandOrModelName: productCat?.categories?[index].name ??"",
                  ),
                ],
              ),
            );
          }),
    );
  }
}