import 'package:chatapp/chat_message.dart';
import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget{
  const ChatScreen({super.key});

  @override
  State createState()=> ChatScreenState();
}
class ChatScreenState extends State<ChatScreen>{

  final TextEditingController _textController= TextEditingController();

  final List<ChatMessage> _messages= <ChatMessage>[];
  void _handleSubmitted(String text){
    _textController.clear();
    ChatMessage message = ChatMessage(text: text);
    setState(() {
      _messages.insert(0, message);
    });
  }


  Widget _textComposerWidget(){
    return IconTheme(
      data: const IconThemeData(color: Colors.blue ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(children: <Widget>[
          Flexible(child: TextField(
            decoration: const InputDecoration.collapsed(hintText: "send a message"),
            controller: _textController,
            onSubmitted: _handleSubmitted,
          )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              onPressed: ()=>_handleSubmitted(_textController.text),
              icon: const Icon(Icons.send),
            ),
          ),
        ],),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Flexible(child: ListView.builder(padding: const EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_,int index)=> _messages[index],
          itemCount: _messages.length,)),
        const Divider(height: 1.0),
        Container(
          decoration: BoxDecoration(color: Theme.of(context).cardColor ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}