
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JarvisDrawer extends StatelessWidget {
  const JarvisDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 60),
            child: Text('Menu',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
          ),
          SizedBox(height: 40,),
          ListTile(
            leading: Icon(Icons.add,color: Color(0xff25946A),),
            title: Text("New Chat",style: TextStyle(fontSize: 16),) ,
            onTap:(){},

          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.comment,color: Color(0xff25946A)),
            title: Text("Promts",style: TextStyle(fontSize: 16),) ,
            onTap:(){},

          ),
          ListTile(
            leading: Icon(Icons.save_outlined,color: Color(0xff25946A)),
            title: Text("Svaed Chats",style: TextStyle(fontSize: 16),) ,
            onTap:(){},

          ),
          ListTile(
            leading: Icon(Icons.settings,color: Color(0xff25946A)),
            title: Text("Signout",style: TextStyle(fontSize: 16),) ,
            onTap:(){
              Navigator.pop(context);
            },

          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xff9393935C),
                        blurRadius: 30.0,
                        offset: Offset(0.0, 0.10)
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [
                        Color(0xff2C9676),
                        Color(0xff3EC58E)
                      ]
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffEAEFD8),
                              borderRadius:BorderRadius.circular(5)

                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Trial expires soon'),
                                SizedBox(width: 5,),
                                Icon(FontAwesomeIcons.triangleExclamation,color: Colors.yellow,size: 10,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Icon(FontAwesomeIcons.crown,size: 30,color: Colors.white,),
                    SizedBox(height: 5,),
                    Text('FULL VERSION: OFFERS',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xffFFFFFF)),)

                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}