import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jarvis/Screen/Onboarding/BottamSheets/signin_bottamsheet.dart';
import 'package:jarvis/Screen/Onboarding/ContainerDescription/roun_signin_button.dart';
import 'package:jarvis/Screen/signup_email.dart';

class SignUpBottamSheet extends StatefulWidget {
  const SignUpBottamSheet({Key? key}) : super(key: key);

  @override
  State<SignUpBottamSheet> createState() => _SignInBottamSheetState();
}

class _SignInBottamSheetState extends State<SignUpBottamSheet> {
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
  void showSignUpBottamSheet(BuildContext context){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
            )
        ),
        builder: (builder){
          return SignUpEmail();
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Welcome to Jarvis GPT-3',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff2C9676)),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: ()=>showSignUpBottamSheet(context),
            child: RoundSignIInButton(
              buttonColor: Color(0xff2C9676),
              buttonText: 'SIGN UP WITH EMAIL',
              buttonIcon: FontAwesomeIcons.envelope,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RoundSignIInButton(
            buttonColor: Color(0xff424242),
            buttonText: 'SIGN UP WITH FACEBOOK',
            buttonIcon: FontAwesomeIcons.facebookF,
          ),
          SizedBox(
            height: 20,
          ),
          RoundSignIInButton(
            buttonColor: Color(0xffBC5D46),
            buttonText: 'SIGN UP WITH GOOGLE',
            buttonIcon: FontAwesomeIcons.google,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account??'),
              InkWell(
                onTap:()=>_showModalSheet(context) ,
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: Color(0xff2C9676),
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
