
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jarvis/Screen/Onboarding/BottamSheets/signin_bottamsheet.dart';
import 'package:jarvis/Screen/Onboarding/onboardingSecond.dart';
import 'package:jarvis/Screen/Widgets/round_button.dart';


class ContainerDescription extends StatelessWidget {
  const ContainerDescription({
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
                Text('Meet ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                Text('Jarvis.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color(0xff25946A)),)
              ],
            ),
            SizedBox(height: height*0.02,),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(children: [
            TextSpan(
                text: 'The AI-powered GPT-3  ',style: TextStyle(color: Colors.black)),
            TextSpan(
                text: 'search ',
                style: TextStyle(color: Color(0xff25946A) )),
            TextSpan(
                text: 'and ',style: TextStyle(color: Colors.black)),
            TextSpan(
                text: 'content\n creation',
                style: TextStyle(color: Color(0xff25946A) )),
            TextSpan(
                text: ' app that gives you accurate, ad-\nfree results instantly.',
                style: TextStyle(color: Colors.black)
                )
          ]),),
            SizedBox(height: height*0.02,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingSecond()));
                },
                  child: RoundButton(height: height, title: 'Next',)),
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


