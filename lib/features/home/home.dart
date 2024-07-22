import 'package:eskiwi_app/features/add_post.dart';
import 'package:eskiwi_app/features/main_screen.dart';
import 'package:eskiwi_app/features/messages/messages.dart';
import 'package:eskiwi_app/features/notifications/notification.dart';

import 'package:eskiwi_app/features/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pixelarticons/pixel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

      List<Widget> _buildScreens() {
    return const [
      MainScreen(),
      MySettingsScreen(),
      AddPost(),
      MyNotification(),
      Messages()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          Pixel.home,
          size: 30,
        ),
        activeColorPrimary: CupertinoColors.systemPink,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Pixel.search,
          size: 30,
        ),
        activeColorPrimary: CupertinoColors.systemPink,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Pixel.plus,
          size: 30,
        ),
        activeColorPrimary: CupertinoColors.systemPink,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Pixel.notification,
          size: 30,
        ),
        activeColorPrimary: CupertinoColors.systemPink,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Pixel.mail,
          size: 30,
        ),
        activeColorPrimary: CupertinoColors.systemPink,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.black87, 
      handleAndroidBackButtonPress: true, 
      resizeToAvoidBottomInset:
          true, 
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, 
      decoration: const NavBarDecoration(
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style3, 
    );
  }
}
