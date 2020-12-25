import 'package:flutter/material.dart';
class CustomTextFormField extends StatelessWidget {
  final String labelText;

  final bool isObscureText;

  final TextInputType keyboardType;

  final TextEditingController controller;

  const CustomTextFormField({
    Key key,
    this.labelText,
    this.isObscureText = false,
    this.keyboardType,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.060),
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(28),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObscureText,
        validator: (value) {
          if (value.isEmpty) {
            return "this field is required";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            fillColor: Color(0xfff5f5f5),
            labelText: labelText,
            labelStyle: TextStyle(
                color: Color(0xff6c738a).withOpacity(0.56),
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12.0),
            border: InputBorder.none),
      ),
    );
  }
}
