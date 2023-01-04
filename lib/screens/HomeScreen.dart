import 'package:flutter/material.dart';

import 'Inbox.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Inbox(),
    Inbox(),
  ];

  Widget currentScreen = Inbox();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        child: BottomAppBar(
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        Inbox(); // if user taps on this dashboard tab will be active
                    currentTab = 0;
                  });
                },
                child: Container(
                  // margin: const EdgeInsets.all(lef),
                  margin: const EdgeInsets.only(left: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 35,
                        color: currentTab == 0 ? Colors.pink : Colors.grey,
                      ),
                      Text(
                        'HOME',
                        style: TextStyle(
                          color: currentTab == 0 ? Colors.pink : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25.0),
                child: const Text(
                  'QR SCAN',
                  style: TextStyle(),
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        Inbox(); // if user taps on this dashboard tab will be active
                    currentTab = 1;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.mail_rounded,
                        size: 35,
                        color: currentTab == 1 ? Colors.pink : Colors.grey,
                      ),
                      Text(
                        'INBOX',
                        style: TextStyle(
                          color: currentTab == 1 ? Colors.pink : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.qr_code_scanner,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          onPressed: () {}),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
