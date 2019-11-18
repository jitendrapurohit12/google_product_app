import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:googleproductsapp/models/product.dart';
import 'package:googleproductsapp/pages/product_listing/rounded_button.dart';

class LeftImageProduct extends StatelessWidget {
  final Product product;

  const LeftImageProduct({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width / 2,
      color: product.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Hero(
                  tag: 'image',
                  child:
                      Image.asset(product.imagePath, fit: BoxFit.fitHeight))),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: 'name',
                    child: RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline,
                          children: [
                            TextSpan(
                                text: product.name,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '\nNew Release',
                                style: TextStyle(fontSize: 6))
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RoundedButton(text: product.buttonText),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
