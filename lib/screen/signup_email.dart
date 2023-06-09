import 'package:flutter/material.dart';
import 'package:jarvis/Screen/Widgets/Custom_button.dart';
import 'package:jarvis/Screen/Widgets/custome_textformfield.dart';
import 'package:jarvis/Screen/forgot_password.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({Key? key}) : super(key: key);

  @override
  State<SignUpEmail> createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
  void showForgtPasswordBottamSheet(BuildContext context){
    showModalBottomSheet(
        context: context,

        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
            )
        ),
        builder: (builder){
          return ForgotPassword();
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: mediaQueryData.viewInsets,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Welcome to Jarvis GPT-3',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff2C9676)),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomeTextFormField(hintText: 'Email', icon: Icons.email_outlined,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomeTextFormField(hintText: 'Password', icon: Icons.key,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomeTextFormField(hintText: 'Re-enter Password', icon: Icons.key,),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomButton(height: 40, title: 'SIGN UP', buttonColor: Color(0xff25946A),),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Text('Already have an account?'),
              InkWell(
                //onTap:()=>_showModalSheet(context) ,
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

