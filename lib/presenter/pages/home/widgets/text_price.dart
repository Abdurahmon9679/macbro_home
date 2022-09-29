import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  final String price;

  const PriceWidget({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "от $price\$",
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
