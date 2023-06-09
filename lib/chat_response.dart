import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jarvis/Custom_button.dart';
import 'package:jarvis/custome_textformfield.dart';
import 'package:jarvis/jarvis_drawer.dart';
import 'package:jarvis/saved_chat.dart';

class ChatResponse extends StatefulWidget {
  const ChatResponse({Key? key}) : super(key: key);

  @override
  State<ChatResponse> createState() => _ChatResponseState();
}

class _ChatResponseState extends State<ChatResponse> {
  void showEraseMessageAlert() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Are you sure?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 20,),
                Text('You are about to erase this chat.',style: TextStyle(color: Color(0xff5C5C5C),fontSize: 15),),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: ()=>Navigator.pop(context),

                        child: CustomButton(height: 30, title: ' Cancel ', buttonColor: Color(0xffF6F6F7))),
                    InkWell(
                      onTap: ()=>ChatResponse(),
                        child: CustomButton(height: 30, title: ' New Chat ', buttonColor: Color(0xff13C2D0)))
                  ],
                )
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
          );
        });
  }
final bool isTyping=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Builder(builder: (context)=>IconButton(
              onPressed: (){
                 Scaffold.of(context).openDrawer();
              }, icon: Icon(FontAwesomeIcons.bars,color: Color(0xffB2B2B2),)),),
          title: Text(
            'Jarvis',
            style: TextStyle(
                color: Color(0xff25946A),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Icon(
                  Icons.volume_up,
                  color: Colors.grey,
                ),
                Image(
                    height: 30,
                    width: 30,
                    image: AssetImage('asset/scanner .png')),
                InkWell(
                  onTap: ()=>showEraseMessageAlert(),
                    child: Icon(Icons.rotate_left, color: Color(0xff13C2D0)))
              ],
            )
          ],
        ),
       drawer: JarvisDrawer(),
        body: Column(
          children: [

            Expanded(child:ListView.builder(
              itemCount: 5,
                itemBuilder: (context,index){
                return Text('Hello');

                })),
            const Align(
              alignment: Alignment.bottomCenter,
              child: sendMessage(),
            )
          ],
        ),
      ),
    );
  }
}
class sendMessage extends StatelessWidget {
  const sendMessage({
    Key? key,
  }) : super(key: key);
  void showSaveAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Save this chat?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 20,),
                Text('Title this conversation so that you can save and access it later.',style: TextStyle(color: Color(0xff5C5C5C),fontSize: 15),),

                SizedBox(height: 30,),
                CustomeTextFormField(hintText: 'Enter a title', icon: FontAwesomeIcons.tag),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                        onTap: ()=>Navigator.pop(context),

                        child: CustomButton(height: 30, title: ' Cancel ', buttonColor: Color(0xffF6F6F7))),
                    InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SavedChat())),
                        child: CustomButton(height: 30, title: '   SAVE   ', buttonColor: Color(0xff25946A)))
                  ],
                )
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 80,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Color(0xff00000029),
            spreadRadius: 5,
            blurRadius: 30.0,
            offset: Offset(0.0, 3))
      ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffEFEFF5),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: <Widget>[
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: ' Send a message..',
                      ),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.mic_none_rounded),
                    iconSize: 25,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    iconSize: 25,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.save_outlined),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
            onPressed: () {
              showSaveAlert(context);
            },
          ),
        ]),
      ),
    );
  }
}
