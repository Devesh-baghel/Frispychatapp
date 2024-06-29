import 'package:flutter/material.dart';

import 'homepage.dart';
void main(){
  return runApp(new MyApp());
}
class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

     return new MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "Chat App",
       home: Homepage(),
       theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade50 ),
       ),
     );
  }
}