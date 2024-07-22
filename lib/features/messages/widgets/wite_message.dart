// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chatview/chatview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

import 'package:eskiwi_app/features/messages/utils/messages_utils.dart';

class WriteMessage extends StatefulWidget {
  const WriteMessage({
    super.key,
    required this.name,
    required this.pathUrl, 
  });
  final String pathUrl;
  final String name;
  

  @override
  State<WriteMessage> createState() => _WriteMessageState();
}

class _WriteMessageState extends State<WriteMessage> {
  ChatController myChatController = ChatController(
    initialMessageList: [
      Message(
          id: '2',
          message: "Hola, Soy Gemini. Dime en que te puedo ayudar?",
          createdAt: DateTime.now(),
          sentBy: "2"),
    ],
    scrollController: ScrollController(),
    otherUsers: usersList,
    currentUser: ChatUser(id: "1", name: "Me"),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ChatView(
          appBar: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.08,
            color: const Color(0xff313035),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Pixel.arrowleft,
                        size: 35,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(300),
                          child: Image(
                            image: AssetImage(widget.pathUrl),
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: const TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              "@AleFC98",
                              style: TextStyle(color: Color(0xff56565A)),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemPink,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Pixel.anchor,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Gift Gems",
                        style:
                            TextStyle(fontSize: 20, fontFamily: "Multipixel"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          chatBubbleConfig: const ChatBubbleConfiguration(
            inComingChatBubbleConfig: ChatBubble(
              color: Color(0xff313035),
              textStyle: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          chatController: myChatController,
          chatViewState: ChatViewState.hasMessages,
          chatBackgroundConfig: const ChatBackgroundConfiguration(
            backgroundColor: Color(0xff201F24),
          ),
        ),
      ),
    );
  }
}

//313035