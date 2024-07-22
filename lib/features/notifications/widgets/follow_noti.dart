import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

class FollowNoti extends StatelessWidget {
  const FollowNoti({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      //color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.17,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Pixel.userplus,
            size: 36,
          ),
          Expanded(
            child: Container(
              //color: Colors.amber,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '@AleFC98\n',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Following you',
                          style: TextStyle(color: Color(0xff56565A)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: const Color(0xff2A2A2C),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(11),
                            child: const Image(
                              image: AssetImage('assets/images/meme.jpg'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Alejandro",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "I`m frontend & Mobile Developer",
                                style: TextStyle(color: Color(0xff56565A)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

//Color(0xff6C6C6E)
