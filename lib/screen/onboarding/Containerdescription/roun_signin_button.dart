import 'package:flutter/material.dart';

class RoundSignIInButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonText;
  final IconData buttonIcon;
  //final String iconImage;
   RoundSignIInButton({Key? key, required this.buttonColor, required this.buttonText, required this.buttonIcon, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         // Image(image:AssetImage(iconImage), ),
          Icon(buttonIcon,color: Colors.white,),
          SizedBox(width: 10,),
          Text(buttonText,style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
