import 'package:flutter/material.dart';
import 'package:macbro_home/presenter/utils/app_colors.dart';

const textTheme = TextTheme(

  headline1: TextStyle(
    fontWeight: FontWeight.w800,
    color: AppColors.primary,
    fontSize: 28,
  ),

  /// for title
  headline2: TextStyle(
    fontSize: 22,
    color: AppColors.primary,
    fontWeight: FontWeight.w700,
  ),

  ///body text
  bodyText1: TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  ),

  ///for search field
  bodyText2: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.greyColor,
  ),

  ///for price
  subtitle1: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.blue,
  ),

  /// for sale
  subtitle2: TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  ),
  caption: TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.greyColor,
  ),

);