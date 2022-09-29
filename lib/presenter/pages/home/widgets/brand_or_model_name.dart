import 'package:flutter/material.dart';

class BrandOrModelName extends StatelessWidget {
  final String brandOrModelName;

  const BrandOrModelName({Key? key, required this.brandOrModelName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      brandOrModelName,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 18),
    );
  }
}