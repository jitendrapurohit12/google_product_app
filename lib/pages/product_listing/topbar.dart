import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Color(0xFFE0E0E0),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            size: 16,
            color: Colors.grey,
          ),
          hintText: 'Search google products',
          hintStyle:
              Theme.of(context).textTheme.headline.copyWith(fontSize: 12),
        ),
        style: Theme.of(context).textTheme.headline.copyWith(fontSize: 14),
      ),
    );
  }
}
