import 'package:eskiwi_app/features/notifications/utils/my_sliver_app_delegate.dart';
import 'package:eskiwi_app/features/notifications/widgets/app_bar_noti.dart';
import 'package:eskiwi_app/features/notifications/widgets/comment_noti.dart';
import 'package:eskiwi_app/features/notifications/widgets/follow_noti.dart';
import 'package:eskiwi_app/features/notifications/widgets/like_noti.dart';
import 'package:eskiwi_app/shared/widgets/my_app_bar.dart';
import 'package:eskiwi_app/shared/widgets/my_drawer.dart';

import 'package:flutter/material.dart';

class MyNotification extends StatelessWidget {
  const MyNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242426),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 40,
              pinned: false,
              floating: false,
              flexibleSpace: MyAppBar(),
            ),
            SliverPersistentHeader(
              delegate: MySliverAppBarDelegate(
                minHeight: 60.0,
                maxHeight: 60.0,
                child: const AppBarNoti(),
              ),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                const [
                  FollowNoti(),
                  Divider(),
                  LikeNoti(),
                  Divider(),
                  CommentNoti(),
                  Divider(),
                  FollowNoti(),
                  Divider(),
                  LikeNoti(),
                  Divider(),
                  CommentNoti(),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
