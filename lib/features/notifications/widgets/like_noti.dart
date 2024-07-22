import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

class LikeNoti extends StatelessWidget {
  const LikeNoti({super.key});

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
            Pixel.heart,
            size: 35,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'pemo, claudia ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'and 33 more',
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
                              image: AssetImage('assets/images/eskiwi.jpg'),
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
                                "Do you like that?",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  MyButton(
                                      myIcon: Icons.health_and_safety_sharp,
                                      patner: "33"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  MyButton(myIcon: Pixel.comment, patner: "33"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  MyButton(myIcon: Icons.share, patner: "33"),
                                ],
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

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.myIcon, required this.patner});
  final IconData myIcon;
  final String patner;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(myIcon),
        const SizedBox(
          width: 2,
        ),
        Text(patner),
      ],
    );
  }
}
