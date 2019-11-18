import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:googleproductsapp/common_widgets/action_button.dart';
import 'package:googleproductsapp/models/product.dart';
import 'package:googleproductsapp/pages/product_details/icon_label_widget.dart';
import 'package:googleproductsapp/utils/image_paths.dart';

import 'detail_background.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({this.product});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          DetailBackground(
            width: width,
            height: height,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Image.asset(
                          menu_image,
                          height: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.2,
                  ),
                  Hero(
                    tag: 'image',
                    child: Image.asset(
                      product.imagePath,
                      width: width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Starting*', style: TextStyle(fontSize: 12)),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Color(0xFF0000FF)),
                                  children: [
                                    TextSpan(
                                        text: '\$',
                                        style: TextStyle(fontSize: 10)),
                                    TextSpan(
                                        text: product.price,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16))
                                  ]),
                            )
                          ],
                        ),
                        SizedBox(height: 16),
                        Hero(
                          tag: 'name',
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(product.name,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(product.productInfo,
                            style: TextStyle(
                              fontSize: 12,
                            )),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconLabelWidget(icon: Icons.brush, label: 'Create'),
                            IconLabelWidget(
                                icon: Icons.bluetooth_connected,
                                label: 'Connect'),
                            IconLabelWidget(
                                icon: Icons.wb_sunny, label: 'Discover'),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Divider(
                          thickness: 1.5,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            ActionButton(
                              text: 'PRE-ORDER',
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            FloatingActionButton(
                              mini: true,
                              child: Icon(Icons.add),
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
