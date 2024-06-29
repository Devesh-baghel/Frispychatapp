import 'package:chatapp/chatscreen.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  @override
  State createState()=> new HomepageState();


  }
class HomepageState extends State<Homepage>{
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Faltu Chat",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
         
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ChatScreen(),
    );
  }
}