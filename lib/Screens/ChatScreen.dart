import 'package:chat_app/Constants/constants.dart';
import 'package:chat_app/Models/Message.dart';
import 'package:chat_app/Screens/Widgets/Custom_Chat_Bubble.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text.dart';
import 'package:chat_app/Screens/Widgets/Custom_Text_Field.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chatscreen extends StatelessWidget {
 Chatscreen({super.key});
  CollectionReference messages=FirebaseFirestore.instance.collection(KMessagesCollection);
  TextEditingController controller=TextEditingController();
  final ccontroller=ScrollController();
  

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream:messages.orderBy('createdAt').snapshots() ,

     // future:messages.doc('fWv4ImROBRJLS2ZRNXMO').get() ,
      builder: (context,snapshot){
      //  print(snapshot.data!['message']);
    
      if(snapshot.hasData){
        List<Message> messageList=[];
        for(int i=0;i<snapshot.data!.docs.length;i++){
          messageList.add(Message.fromJson(snapshot.data!.docs[i]));
        }
 // print(snapshot.data!.docs[0]['messages']);
      
        return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          automaticallyImplyLeading: false,
          title:Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(KLogo,height: 85),
             const  Text(' Chat'),
            
            ],
          ),
      
          centerTitle: true,
          backgroundColor: kPcolor,
        ),
        body:   Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:ListView.builder(
                  controller: ccontroller,
                  itemCount: messageList.length,
                  itemBuilder: (context,index){
                    
                    return  Padding(
                      padding:const EdgeInsets.symmetric(vertical: 10),
                      child: CustomChatBubble(message: messageList[index]),
                    );
              
                  }),
              
               
              ),
            ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child:TextField(
                    controller: controller,
                    onSubmitted: (data){
                      messages.add({
                        'message':data
                        ,'createdAt':DateTime.now()
                      });
                      controller.clear();
                      ccontroller.animateTo(
                        ccontroller.position.maxScrollExtent,
                         duration: Duration(seconds: 1),
                          curve: Curves.fastOutSlowIn);
                    },
                    decoration: InputDecoration(
                      hintText: 'Send Message',
                      suffixIcon: const Icon(Icons.send,color: kPcolor,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: kPcolor
                        )
                      )
                    ),
                  
                  )
                )
      
                
          ],
        ),
      );}
      else{return const Text('loading');}
  });
  }
}
