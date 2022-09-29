import 'package:flutter/material.dart';
import 'package:macbro_home/presenter/pages/home/widgets/brand_or_model_name.dart';
import 'package:macbro_home/presenter/pages/home/widgets/sale_badge.dart';
import 'package:macbro_home/presenter/pages/home/widgets/text_price.dart';
import 'package:macbro_home/presenter/utils/app_colors.dart';

class ProductCard extends StatelessWidget {
  final bool? saleOn;

  final String? img;

  final bool? isLiked;

  final String? price;
  final String? brandOrModelName;

  const ProductCard(
      {Key? key,
      this.saleOn,
      required this.price,
      required this.brandOrModelName,
      required this.img,
        this.isLiked,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 12),
          height: 180,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.whiteColor,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: NetworkImage(
                  img!,
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    saleOn == true
                        ? const SaleBadge()
                        : const SizedBox.shrink(),
                    Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: AppColors.homeBackColor,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child:  Icon(
                             Icons.favorite,
                          size: 18,
                          color: isLiked !=null && isLiked!?  AppColors.blue:AppColors.greyColor),
                        ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        BrandOrModelName(brandOrModelName: brandOrModelName!),
        const SizedBox(height: 4),
        PriceWidget(
          price: price!,
        ),
      ],
    );
  }
}
