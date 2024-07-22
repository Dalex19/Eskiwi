import 'package:eskiwi_app/features/messages/widgets/app_bar_messa.dart';
import 'package:eskiwi_app/features/messages/widgets/card_message.dart';
import 'package:eskiwi_app/features/messages/widgets/no_messages.dart';
import 'package:eskiwi_app/features/messages/widgets/open_chats.dart';
import 'package:eskiwi_app/shared/widgets/my_app_bar.dart';
import 'package:eskiwi_app/shared/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: const MyAppBar(),
      body: Column(
        children: [
          AppBarMessa(
            myPageController: _pageController,
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: const [
                OpenChats(),
                NoMessages(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
