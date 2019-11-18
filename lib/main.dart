import 'package:flutter/material.dart';

import 'pages/product_listing/product_listing_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white,
          fontFamily: 'OpenSans'),
      home: ProductListingPage(),
    );
  }
}
