import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  final String price;

  const Price({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "от ${price} сум",
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
