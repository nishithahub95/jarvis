import 'package:flutter/material.dart';
import 'package:jarvis/Custom_button.dart';
import 'package:jarvis/custome_textformfield.dart';
import 'package:jarvis/forgot_password.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({Key? key}) : super(key: key);

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  void showForgtPasswordBottamSheet(BuildContext context){
    showModalBottomSheet(
        context: context,
          isScrollControlled: true,
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
      //const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Welcome back!',style: TextStyle(color: Color(0xff2C9676),fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomeTextFormField(hintText: 'Email', icon: Icons.email_outlined,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20),
            child: CustomeTextFormField(hintText: 'Password', icon: Icons.key,),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: ()=>showForgtPasswordBottamSheet(context),
                  child: Text('Forgot Password?',style: TextStyle(color: Color(0xff2C9676),fontSize: 14,fontStyle: FontStyle.italic),))
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(height: 40, title: 'SIGN IN', buttonColor: Color(0xff25946A),),
          ),
          SizedBox(height: 20,),
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account?'),
                InkWell(
                   // onTap:()=>_showModalSheet(context) ,
                    child: Text('Get Started!',style: TextStyle(color: Color(0xff2C9676),decoration: TextDecoration.underline),))
              ],
            ),
          )
        ],
      ),
    );
  }
}

