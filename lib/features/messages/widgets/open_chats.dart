import 'package:eskiwi_app/features/messages/widgets/card_message.dart';
import 'package:flutter/material.dart';

class OpenChats extends StatelessWidget {
  const OpenChats({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
                  child: Column(
                    children: [
                      Divider(),
                      CardMessage(
                        isNewMessage: false,
                        name: "Alejandro",
                        message:
                            "lorem ipsum inset lorem about lorem ipsum inset lorem about",
                        pathImage: "assets/images/onlyme.jpg",
                      ),
                      Divider(),
                      CardMessage(
                        isNewMessage: true,
                        name: "Max",
                        message: "lorem ipsum inset lorem about",
                        pathImage: 'assets/images/avata1.jpg',
                      ),
                      Divider(),
                      CardMessage(
                        isNewMessage: false,
                        name: "Peluca",
                        message: "🤑🤑",
                        pathImage: 'assets/images/mileigod.png',
                      ),
                      Divider(),
                      CardMessage(
                        isNewMessage: true,
                        name: "Jinx (GF)",
                        message: "🔥🩷",
                        pathImage: 'assets/images/pretty.jpg',
                      ),
                      Divider(),
                      CardMessage(
                        isNewMessage: false,
                        name: "Alejandro",
                        message:
                            "lorem ipsum inset lorem about lorem ipsum inset lorem about",
                        pathImage: "assets/images/onlyme.jpg",
                      ),
                      Divider(),
                      CardMessage(
                        isNewMessage: true,
                        name: "Max",
                        message: "lorem ipsum inset lorem about",
                        pathImage: 'assets/images/avata1.jpg',
                      ),
                      Divider(),
                      CardMessage(
                        isNewMessage: false,
                        name: "Peluca",
                        message: "🤑🤑",
                        pathImage: 'assets/images/mileigod.png',
                      ),
                      Divider(),
                      CardMessage(
                        isNewMessage: true,
                        name: "Jinx (GF)",
                        message: "🔥🩷",
                        pathImage: 'assets/images/pretty.jpg',
                      ),
                    ],
                  ),
                );
  }
}