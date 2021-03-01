import 'package:flutter/material.dart';

class SearchXD extends StatelessWidget {
  SearchXD({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 24,
              color: Colors.grey[800],
            ),
            SizedBox(width: 10),
            Text(
              'Search for ...',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(44),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey[200],
                  Colors.grey[300],
                  Colors.grey[400],
                  Colors.grey[500],
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  1
                ])),
      ),
    );
  }
}
