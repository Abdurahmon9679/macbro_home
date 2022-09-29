import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:macbro_home/presenter/pages/home/controller/home_controller.dart';
import 'package:macbro_home/presenter/pages/home/widgets/products_category_gridView.dart';
import 'package:macbro_home/presenter/pages/home/widgets/products_list_view_hor.dart';
import 'package:macbro_home/presenter/theme/text_theme.dart';
import 'package:macbro_home/presenter/utils/app_colors.dart';
import 'package:macbro_home/presenter/utils/app_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (homeController) {
          return Scaffold(
            backgroundColor: AppColors.homeBackColor,
            appBar: AppBar(
              centerTitle: true,
              toolbarHeight: 100,
              title: const _SearchWidget(),
              actions: [
                IconButton(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppIcons.notificationIcon,
                  ),
                ),
              ],
            ),
            body: Stack(
              children: [
                homeController.isLoading == false
                    ? SafeArea(
                        child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ///banner
                              _BannerWidget(
                                bannerImages: homeController.bannerImages,
                              ),
                              const SizedBox(height: 39),

                              ///title and button
                              const _TitleAndButton(
                                  title: 'Новые', isBtn: true),
                              const SizedBox(height: 16),

                              ///new products
                              ProductsList(
                                newProducts: homeController.products,
                                saleOn: false,
                              ),

                              const SizedBox(height: 25),

                              ///title and button
                              const _TitleAndButton(
                                title: 'Скидки',
                                isBtn: true,
                              ),

                              ///sale
                              ProductsList(
                                newProducts: homeController.products,
                                saleOn: true,
                              ),

                              const SizedBox(height: 32),

                              /// title and button
                              const _TitleAndButton(title: 'Категории'),

                              const SizedBox(height: 10),

                              ///category
                              ProductsCategoryWidget(
                                productCat: homeController.category,
                              ),

                              const SizedBox(height: 32),

                              ///title and button
                              const _TitleAndButton(
                                  title: 'Рекомендуемые', isBtn: true),

                              /// recommend
                              ProductsList(
                                isLiked: homeController.isLiked,
                                newProducts: homeController.products,
                                saleOn: false,
                              ),

                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ))
                    : const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
              ],
            ),
            bottomNavigationBar:  _BottomNav(
              onChange: homeController.onChange,
              selectIndex: homeController.selectIndex,),
          );
        });
  }
}

class _SearchWidget extends StatelessWidget {
  const _SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.homeBackColor,
      ),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.85,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: Theme.of(context).textTheme.bodyText2,
          prefixIcon: const Icon(
            CupertinoIcons.search,
            size: 25,
          ),
        ),
      ),
    );
  }
}

class _TitleAndButton extends StatelessWidget {
  final String title;

  final bool? isBtn;

  const _TitleAndButton({Key? key, required this.title, this.isBtn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        isBtn != null && isBtn == true
            ? IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_forward_rounded))
            : const SizedBox.shrink()
      ],
    );
  }
}

class _BottomNav extends StatelessWidget {
  final int selectIndex;

  final Function(int) onChange;

  const _BottomNav({
    Key? key,
    required this.selectIndex,
    required this.onChange,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      currentIndex: selectIndex,
      onTap: (index) =>onChange(index),
      selectedItemColor: AppColors.blue,
      unselectedItemColor: AppColors.greyColor,
      unselectedLabelStyle: textTheme.caption,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.bottomHome,
            color: AppColors.greyColor,
          ),
          activeIcon: SvgPicture.asset(
            AppIcons.bottomHome,
            color: AppColors.blue,
          ),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.bottomBadge,
          ),
          activeIcon: SvgPicture.asset(
            AppIcons.bottomBadge,
            color: AppColors.blue,
          ),
          label: 'Корзина',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.heart,
          ),
          label: 'Избранные',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppIcons.bottomPerson,
          ),
          activeIcon: SvgPicture.asset(
            AppIcons.bottomPerson,
            color: AppColors.blue,
          ),
          label: 'Профиль',
        ),
      ],
    );
  }
}

class _BannerWidget extends StatelessWidget {
  final List bannerImages;

  const _BannerWidget({
    Key? key,
    required this.bannerImages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 180, autoPlay: true),
      items: bannerImages.map((banner) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.only(
                    top: 24, left: 18, right: 18, bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 180,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network("$banner"));
          },
        );
      }).toList(),
    );
  }
}
