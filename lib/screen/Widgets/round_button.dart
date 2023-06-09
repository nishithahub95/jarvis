

import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.height, required this.title,
  }) : super(key: key);

  final double height;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*0.05,
      decoration: BoxDecoration(
          color: Color(0xff25946A),
          borderRadius: BorderRadius.circular(20)

      ),
      child: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,style: TextStyle(color: Colors.white,),),
          SizedBox(width: 60,),
          Icon(Icons.arrow_forward,color: Colors.white,)

        ],
      )),
    );
  }
}