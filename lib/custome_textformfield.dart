
import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const CustomeTextFormField({
    Key? key, required this.hintText, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: Color(0xffEFEFF5),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEFEFF5)),
              borderRadius: BorderRadius.circular(30)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffEFEFF5)),
              borderRadius: BorderRadius.circular(30)
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize:12,color: Color(0xffB2B2B2)),
          suffixIcon: Icon(icon,color: Color(0xff2C9676),)
      ),
    );
  }
}