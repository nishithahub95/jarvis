
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jarvis/Onboarding/ContainerDescription/signin_bottamsheet.dart';
import 'package:jarvis/Onboarding/onboardingSecond.dart';

import '../../round_button.dart';

class ContainerDescriptionTwo extends StatelessWidget {
  const ContainerDescriptionTwo({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  void _showModalSheet(BuildContext context){
    showModalBottomSheet(
        context: context,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
            )
        ),
        builder: (builder){
          return SignInBottamSheet();
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: height*0.4,
      width: width*0.85,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Live ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color(0xff25946A)),),
                Text('dialogue.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),)
              ],
            ),
            SizedBox(height: height*0.02,),
            Text('Get the perfect results every time with Jarvis dialogue-based editing and live feedback feature.',textAlign: TextAlign.center,),

            SizedBox(height: height*0.02,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingSecond()));
                  },
                  child: RoundButton(height: height, title: 'GET STARTED',)),
            ),
            SizedBox(height: height*0.02,),
            RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(children: [
                  TextSpan(
                    text: 'Already have an account?',style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: 'Log In ',
                      style: TextStyle(color: Color(0xff2C9676),decoration: TextDecoration.underline ),
                      recognizer: TapGestureRecognizer()
                        ..onTap=(){
                          _showModalSheet(context);

                        }

                  ),
                ])),
            SizedBox(height: height*0.02,),

          ],
        ),
      ),

    );
  }
}


