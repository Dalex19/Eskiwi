import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Flexible(
        child: Container(
          padding: const EdgeInsets.only(top: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DrawerHeader(),
                  MyListTile(title: "Home", icon: Pixel.home),
                  SizedBox(height: 10),
                  MyListTile(title: "Find creators", icon: Pixel.search),
                  SizedBox(height: 10),
                  MyListTile(title: "Chats", icon: Pixel.message),
                  SizedBox(height: 10),
                  MyListTile(title: "Favorities", icon: Pixel.heart),
                  SizedBox(height: 10),
                  MyListTile(
                      title: "Manage Subscription", icon: Pixel.paperclip),
                  SizedBox(height: 10),
                  MyListTile(title: "Help - FAQs", icon: Pixel.warningbox),
                ],
              ),
              Column(
                children: [
                  Divider(),
                  MyListTile(title: "Settings", icon: Pixel.gitbranch)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      width: double.infinity,
      height: 45,
      child: Row(
        children: [
          PhysicalModel(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
            shadowColor: Colors.black,
            elevation: 4,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color(0xff2C2B2D),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Pixel.coin,
                color: Colors.amber,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
                color: const Color(0xff201F22),
                borderRadius: BorderRadius.circular(8)),
            child: const Text(
              "2000 Coins",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: PhysicalModel(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
        shadowColor: Colors.black,
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color(0xff2C2B2D),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
      title: Text(title),
      onTap: () {},
    );
  }
}
