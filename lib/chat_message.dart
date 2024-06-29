import 'package:flutter/material.dart';
const String _name= "Devesh";
class ChatMessage extends StatelessWidget {

  final String text;
  ChatMessage({required this.text});
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
                 new Container(
                   margin: const EdgeInsets.only(right: 16.0),
                   child: new CircleAvatar(
                     child: Text(_name[0]),
                   ),
                 ),
          new Column(
            children: <Widget>[
              Text(_name,style: Theme.of(context).textTheme.bodyMedium,),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}