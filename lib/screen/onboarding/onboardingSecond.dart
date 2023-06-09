import 'package:flutter/material.dart';
import 'package:jarvis/Screen/Onboarding/ContainerDescription/Container_description_two.dart';
class OnboardingSecond extends StatefulWidget {
  const OnboardingSecond({Key? key}) : super(key: key);

  @override
  State<OnboardingSecond> createState() => _OnboardingSecondState();
}

class _OnboardingSecondState extends State<OnboardingSecond> {

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(

        child: Container(
          height: height,
          width: width,
          color: Color(0xffF6F6F7),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.of(context).pop();
                    },
                        child: Icon(Icons.navigate_before)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 74,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text('Skip',style: TextStyle(color: Colors.black),)),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 80,
                left: 100,
                child: Container(
                  height: height*0.4,
                  width: width*0.4,
                  child: Image(image: AssetImage('asset/chat.png'),),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: height*0.25,
                  color: Color(0xff00DAAE),
                ),
              ),Positioned(
                left: 30,
                top: 400,
                child: ContainerDescriptionTwo(height: height, width: width),
              ),
            ],
          ),
        ),
      ),



    );
  }
}

