import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:googleproductsapp/models/product.dart';
import 'package:googleproductsapp/pages/product_listing/rounded_button.dart';

class RightImageProduct extends StatelessWidget {
  final Product product;

  const RightImageProduct({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: product.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline,
                        children: [
                          TextSpan(
                              text: product.description,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RoundedButton(text: product.buttonText),
                ],
              ),
            ),
          ),
          Expanded(
              child: Image.asset(product.imagePath, fit: BoxFit.fitHeight)),
        ],
      ),
    );
  }
}
