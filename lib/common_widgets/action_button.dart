import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;

  const ActionButton({this.text});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24))),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 12)),
      ),
    );
  }
}
