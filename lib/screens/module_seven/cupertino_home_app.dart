import 'package:flutter/cupertino.dart';

import 'feeds_page.dart';
import 'search_page.dart';
import 'settings_page.dart';

class CupertinoHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return CupertinoPageScaffold(
    //   navigationBar: CupertinoNavigationBar(
    //     middle: Text('Cupertino App'),
    //   ),
    //   child: Center(
    //     child: Text(
    //       'Home Page',
    //       style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
    //     ),
    //   ),
    // );
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news),
              label: 'Feeds',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Settings',
            ),
          ],
        ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return FeedsPage();
          case 1:
            return SearchPage();
          case 2:
            return SettingsPage();
          default:
            return Center(
              child: Text('Page not found!'),
            );
        }
      },);
  }
}