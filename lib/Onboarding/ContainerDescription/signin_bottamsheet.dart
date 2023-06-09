import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jarvis/Onboarding/ContainerDescription/roun_signin_button.dart';
import 'package:jarvis/Onboarding/ContainerDescription/signup_bottamsheet.dart';
import 'package:jarvis/login_email.dart';
class SignInBottamSheet extends StatefulWidget {
  const SignInBottamSheet({Key? key}) : super(key: key);

  @override
  State<SignInBottamSheet> createState() => _SignInBottamSheetState();
}

class _SignInBottamSheetState extends State<SignInBottamSheet> {
  void _showModalSheet(BuildContext context){
    showModalBottomSheet(
        context: context,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
            )
        ),
        builder: (builder){
          return SignUpBottamSheet();
        }
    );
  }
  void showLoginBottamSheet(BuildContext context){
    showModalBottomSheet(
        context: context,
          isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
            )
        ),
        builder: (builder){
          return LoginEmail();
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Welcome back!',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold,color: Color(0xff2C9676)),),
          SizedBox(height: 30,),
          InkWell(
              onTap:()=> showLoginBottamSheet(context),
              child: RoundSignIInButton(buttonColor: Color(0xff2C9676), buttonText: 'SIGN IN WITH EMAIL', buttonIcon: FontAwesomeIcons.envelope,)),
          SizedBox(height: 20,),
          RoundSignIInButton(buttonColor: Color(0xff424242), buttonText: 'SIGN IN WITH FACEBOOK',buttonIcon: FontAwesomeIcons.facebookF, ),
          SizedBox(height: 20,),
          RoundSignIInButton(buttonColor: Color(0xffBC5D46), buttonText: 'SIGN IN WITH GOOGLE', buttonIcon: FontAwesomeIcons.google,),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an account?'),
              InkWell(
                onTap:()=>_showModalSheet(context) ,
                  child: Text('Get Started!',style: TextStyle(color: Color(0xff2C9676),decoration: TextDecoration.underline),))
            ],
          )

        ],
      ),
    );
  }
}
