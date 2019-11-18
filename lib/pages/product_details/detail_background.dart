import 'package:flutter/material.dart';
import 'package:googleproductsapp/utils/image_paths.dart';

class DetailBackground extends StatelessWidget {
  final double width, height;

  const DetailBackground({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.4,
      width: width,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -width * 0.25,
            left: width * 0.3,
            child: Container(
              width: width * 1.2,
              height: width * 1.2,
              decoration: BoxDecoration(
                color: Color(0xFF0000FF),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: width * 0.4,
            left: 16,
            right: 16,
            child: Image.asset(
              googleTextLogo_image,
              color: Colors.grey.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}
