import 'package:flutter/material.dart';
import 'package:jarvis/Screen/Widgets/Custom_button.dart';
import 'package:jarvis/Screen/Widgets/custome_textformfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Text('Forgot Password?',style: TextStyle(color: Color(0xff2C9676),fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 20,),
          Text('Enter your email and we’ll sent you a reset link.'),
          SizedBox(height: 20,),
          CustomeTextFormField(hintText: 'Email', icon: Icons.email_outlined,),
          SizedBox(height: 30,),
          CustomButton(height: 40, title: 'SEND LINK', buttonColor: Color(0xff25946A),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an account?'),
              InkWell(
                  child: Text('Get Started!',style: TextStyle(color: Color(0xff2C9676),decoration: TextDecoration.underline),))
            ],
          )
        ],
      ),
    );
  }
}

