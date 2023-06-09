import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jarvis/Screen/Widgets/custome_textformfield.dart';
import 'package:jarvis/Screen/Widgets/jarvis_drawer.dart';

class SavedChat extends StatefulWidget {
  const SavedChat({Key? key}) : super(key: key);

  @override
  State<SavedChat> createState() => _SavedChatState();
}

class _SavedChatState extends State<SavedChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(builder: (context)=>IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: Icon(FontAwesomeIcons.bars,color: Color(0xffB2B2B2),)),),
        centerTitle: true,
        title: Text(
          'Jarvis',
          style: TextStyle(
              color: Color(0xff25946A),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),

      ),
      drawer: JarvisDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saved Chats',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                        child: CustomeTextFormField(hintText: 'Search', icon: Icons.search))
                  ],
                ),
                InkWell(
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                      width: 1.5, color:Color(0xffEFEFF5) ,
                    ),
                  ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Edit',style: TextStyle(color: Color(0xff3E3E3E),fontSize: 14,fontWeight: FontWeight.bold),),
                          Divider(
                            color: Color(0xffEFEFF5),
                          ),
                          Icon(Icons.edit,color: Color(0xff31DAA5),)
                        ],
                      ),
                    ),
                  ),
                ),
                
                InkWell(
                  child: Container(
                      height: MediaQuery.of(context).size.height*0.15,
                      width: MediaQuery.of(context).size.width*0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1.5, color:Color(0xffEFEFF5) ,
                        ),
                      ),
                     child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Delete',style: TextStyle(color: Color(0xff3E3E3E),fontSize: 14,fontWeight: FontWeight.bold),),
            Icon(Icons.delete,color: Color(0xffF03165),)
          ],
        ),
      ),
                  ),
                )
              ],
            ),
            

          ],
        ),
      ),
    );
  }
}

