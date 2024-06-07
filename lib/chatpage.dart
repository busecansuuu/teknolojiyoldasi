import 'dart:convert';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ChatUser user = ChatUser(id: "1", firstName: "user");
  ChatUser bot = ChatUser(id: "2", firstName: "Chatbot");
  List<ChatMessage> allMessages = [];
  List<ChatUser> typing = [];
  final ourUrl =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyA0L7ieyd-1BtLzB64JkA_u6vD19fGkKKA";
  final header = {'Content-Type': 'application/json'};
 
  getData(ChatMessage m) async {
    typing.add(bot);
    allMessages.insert(0, m);
    setState(() {});
    var data = {
      "contents": [
        {
          "parts": [
            {"text": m.text}
          ]
        }
      ]
    };
    await http
        .post(Uri.parse(ourUrl), headers: header, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        var result = jsonDecode(value.body);
        print(result["candidates"][0]["content"]["parts"][0]["text"]);
        ChatMessage m1 = ChatMessage(
            user: bot,
            createdAt: DateTime.now(),
            text: result["candidates"][0]["content"]["parts"][0]["text"]);
        allMessages.insert(0, m1);
      } else {
        print("error occurred");
      }
    }).catchError((e) {});
    typing.remove(bot);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 180, 76, 2),
          title: const Row(
            children: [
              Icon(
                Icons.chat,
                color: Colors.white,
              ),
              
              SizedBox(width: 16),
              Text(
                "Chatbot",
                style: TextStyle(color: Colors.white),
              ),
            ],
          )),

      body: DashChat(
          messageOptions: const MessageOptions(
              showTime: true,
              textColor: Colors.white,
              containerColor: Color.fromARGB(255, 221, 93, 2)),
          typingUsers: typing,
          currentUser: user,
          onSend: (ChatMessage m) {
            getData(m);
          },
          messages: allMessages),
    );
  }
}
