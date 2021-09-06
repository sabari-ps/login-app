

import 'package:flutter/material.dart';

class QuoteTile extends StatelessWidget {
  final String name;
  final String quote;
  final String imgUrl;
  final String role;

  QuoteTile(
      {required this.name,
      required this.quote,
      required this.imgUrl,
      required this.role});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 2.0,
            color: Colors.grey.shade50
          ),
        ]
      ),
      child: ListTile(
        dense: true,
        leading: ClipRRect(
          child: Image.network(imgUrl),
          borderRadius: BorderRadius.circular(100.0),
        ),
        title: Text(
          "\"$quote\"",
          style: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(role),
          ],
        ),
      ),
    );
  }
}
