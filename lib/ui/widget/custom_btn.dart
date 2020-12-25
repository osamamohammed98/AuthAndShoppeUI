import 'package:flutter/material.dart';
class CustomBotton extends StatelessWidget {
  final String text;
  final Function fun;
  final double width;

  const CustomBotton({
    Key key,
    this.text,
    this.fun,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: 35,
      decoration: BoxDecoration(
        color: Color(0xFF999999).withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "$text",
        style: TextStyle(
          fontSize: 14,
          color: Color(0xFF999999),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
