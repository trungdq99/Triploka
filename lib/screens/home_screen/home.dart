import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:triploka/screens/Register_screen.dart';
import 'package:triploka/screens/WelcomeScreen.dart';
import 'package:triploka/screens/booking_screen.dart';
import 'package:triploka/screens/home_screen/tabs/account_tab.dart';
import 'package:triploka/screens/home_screen/tabs/home_tab.dart';
import 'package:triploka/screens/home_screen/tabs/search_tab.dart';
import 'package:triploka/screens/login_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.home,
            color: Colors.teal,
          ),
          title: Text(
            'Trang chủ',
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.flag,
            color: Colors.teal,
          ),
          title: Text(
            'Đã lưu',
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.add_circled,
            color: Colors.teal,
          ),
//          title: Text(
//            'Tài khoản',
//            style: TextStyle(
//              color: Colors.teal,
//            ),
//          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.search,
            color: Colors.teal,
          ),
          title: Text(
            'Tìm kiếm',
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
          icon: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.teal,
          ),
          title: Text(
            'Tài khoản',
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
        ),
      ]),
      tabBuilder: (context, index) {
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: HomeTab(),
                );
              },
            );
            break;
          case 1:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: RegisterScreen(),
                );
              },
            );
            break;
          case 2:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: RegisterScreen(),
                );
              },
            );
            break;
          case 3:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: SearchTab(),
                );
              },
            );
            break;
          case 4:
            returnValue = CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: AccountTab(),
                );
              },
            );
            break;
        }
        return returnValue;
      },
    );
  }
}
