import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pixelarticons/pixel.dart';

class CommentNoti extends StatelessWidget {
  const CommentNoti({super.key});

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
            Pixel.comment,
            size: 35,
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
                      text: '@KNSRK\n',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'made a comment',
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
                              image: AssetImage('assets/images/onlyme.jpg'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Flexible(
                            child: Text(
                              "Lorem ipsum dorem lorem ipsum doremlorem ipsum dorem",
                              style: TextStyle(),
                              overflow: TextOverflow.clip,
                            ),
                          ),
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
