import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;

  const RoundedButton({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
      ),
    );
  }
}
