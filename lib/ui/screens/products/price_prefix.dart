import 'package:flutter/material.dart';

class PricePrefix extends StatelessWidget {
  final String title;
  const PricePrefix({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 10,
        ),
      ),
    );
  }
}
