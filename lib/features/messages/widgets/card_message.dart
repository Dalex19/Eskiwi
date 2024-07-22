// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eskiwi_app/features/messages/widgets/wite_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardMessage extends StatelessWidget {
  const CardMessage({
    Key? key,
    required this.isNewMessage,
    required this.name,
    required this.message,
    required this.pathImage,
  }) : super(key: key);
  final bool isNewMessage;
  final String name;
  final String message;
  final String pathImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WriteMessage(
              name: name,
              pathUrl: pathImage,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        height: MediaQuery.of(context).size.height * 0.12,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Image(
                image: AssetImage(pathImage),
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 20),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      const Text(
                        "11/07/24",
                        style:
                            TextStyle(color: Color(0xff6C6C6E), fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  isNewMessage
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                  overflow: TextOverflow.clip,
                                  message,
                                  style: const TextStyle(fontSize: 15)),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: CupertinoColors.systemPink,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: const Text(
                                "New",
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        )
                      : Flexible(
                          child: Text(
                            overflow: TextOverflow.clip,
                            message,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//lorem ipsum inset lorem about lorem ipsum inset lorem about