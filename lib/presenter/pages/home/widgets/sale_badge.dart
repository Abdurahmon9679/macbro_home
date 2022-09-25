import 'package:flutter/material.dart';
import 'package:macbro_home/presenter/utils/app_colors.dart';

class SaleBadge extends StatelessWidget {
  const SaleBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 21,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: AppColors.gradient,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.center,
      child: Text(
        '21%',
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}