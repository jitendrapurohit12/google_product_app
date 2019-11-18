import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:googleproductsapp/models/product.dart';

class CenterImageProduct extends StatelessWidget {
  final Product product;

  const CenterImageProduct({this.product});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2;

    return Container(
      width: width,
      height: width,
      color: product.backgroundColor,
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Image.asset(product.imagePath),
            ),
            SizedBox(
              height: 8,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: product.name, style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: '\n' + product.description,
                    style: TextStyle(color: Colors.black, fontSize: 8))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
