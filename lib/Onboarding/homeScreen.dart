import 'package:flutter/material.dart';
import 'package:jarvis/Onboarding/ContainerDescription/container_description.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          //color: Colors.blue,
          color: Color(0xffF6F6F7),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:  EdgeInsets.all(8.0),
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
              Positioned(
                top: 100,
                left: 110,
                child: Container(
                  height: height*0.4,
                  width: width*0.4,
                  child: Image(image: AssetImage('asset/chatbot.jpg'),),
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
            child: ContainerDescription(height: height, width: width),
              ),
            ],
          ),
        ),
      ),



    );
  }
}

