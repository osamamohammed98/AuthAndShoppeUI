import 'package:flutter/material.dart';
class ProfileData extends StatelessWidget {
  final String title, value;

  const ProfileData({
    Key key,
    this.title,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$value",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "$title",
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF999999),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

