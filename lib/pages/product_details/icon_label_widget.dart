import 'package:flutter/material.dart';

class IconLabelWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconLabelWidget({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: Colors.red,
            size: 30,
          ),
        ),
        Text(label)
      ],
    );
  }
}
