import 'package:flutter/material.dart';

class PriceDesign extends StatelessWidget {
  final String price;
  Color? txtClr;
  PriceDesign({
    Key? key,
    required this.price,
    this.txtClr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Text(
        price,
        style: TextStyle(
          fontSize: 12,
          color: txtClr ?? Colors.blue,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
