import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/ui/screens/home/home.dart';
import 'package:ui_design/ui/screens/products/price_design.dart';
import 'package:ui_design/ui/screens/products/price_prefix.dart';
import 'package:ui_design/ui/widgets/helper.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // product image
          Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          // product name & prices
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // name
              const SizedBox(
                width: 200,
                height: 40,
                child: AutoSizeText(
                  'Amazfit GTS 4 Mini Smartwatch',
                  maxLines: 3,
                  minFontSize: 9,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // prices
              Row(
                children: [
                  const PricePrefix(title: 'RP'),
                  PriceDesign(price: '8,590'),
                  const PricePrefix(title: 'MRP'),
                  PriceDesign(
                    price: '8,990',
                    txtClr: Colors.green,
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          // warranty & status
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // warranty
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.purple,
                  ),
                ),
                child: const Text(
                  '24 Months',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.purple,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // status
              const Text(
                'Available',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
