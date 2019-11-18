import 'package:flutter/material.dart';
import 'package:googleproductsapp/common_widgets/action_button.dart';
import 'package:googleproductsapp/models/product.dart';
import 'package:googleproductsapp/pages/product_details/product_detail_page.dart';
import 'package:googleproductsapp/pages/product_listing/left_image_product.dart';
import 'package:googleproductsapp/pages/product_listing/right_image_product.dart';
import 'package:googleproductsapp/utils/image_paths.dart';

import 'center_image_product.dart';
import 'topbar.dart';

class ProductListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            googleLogo_image,
            fit: BoxFit.cover,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              menu_image,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopBar(),
            GestureDetector(
              onTap: () => openProductDetail(context, pixel),
              child: RightImageProduct(
                product: pixel,
              ),
            ),
            GestureDetector(
              onTap: () => openProductDetail(context, stadia),
              child: LeftImageProduct(
                product: stadia,
              ),
            ),
            Row(
              children: <Widget>[
                GestureDetector(
                    onTap: () => openProductDetail(context, pixelStand),
                    child: CenterImageProduct(product: pixelStand)),
                GestureDetector(
                    onTap: () => openProductDetail(context, dayDreamView),
                    child: CenterImageProduct(product: dayDreamView)),
              ],
            ),
            Container(
                padding: EdgeInsets.only(top: 4, bottom: 4),
                child: ActionButton(
                  text: 'VIEW ALL',
                ))
          ],
        ),
      ),
    );
  }

  openProductDetail(BuildContext context, Product product) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductDetailPage(
                  product: product,
                )));
  }
}
