import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.height, required this.title, required this.buttonColor,
  }) : super(key: key);

  final double height;
  final String title;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20)

      ),
      child: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,style: TextStyle(color: Color(0xffFFFFFF),),),
        ],
      )),
    );
  }
}