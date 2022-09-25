import 'package:flutter/material.dart';
import 'package:macbro_home/presenter/pages/home/widgets/brand_or_model_name.dart';
import 'package:macbro_home/presenter/utils/app_colors.dart';

class ProductsCategory extends StatelessWidget {
  const ProductsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
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
                children: const [
                  Image(
                    height: 100,
                    image: AssetImage('assets/icons/iphone.png'),
                    fit: BoxFit.cover,
                  ),
                  BrandOrModelName(
                    brandOrModelName: 'In',
                  ),
                ],
              ),
            );
          }),
    );
  }
}