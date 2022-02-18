import 'package:flutter/material.dart';
import 'package:mayfay_hackaton/pages/home_page.dart';
import 'package:mayfay_hackaton/pages/keuangan_page.dart';
import 'package:mayfay_hackaton/style.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  List<Widget> children = const [
    HomePage(),
    KeuanganPage(),
    Center(
      child: Text(
        "Ini adalah riwayat",
      ),
    ),
    Center(
      child: Text(
        "Ini adalah riwayat",
      ),
    ),
    Center(
      child: Text(
        "Ini adalah riwayat",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children.elementAt(_currentIndex),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: kGrey4Color,
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
              ),
              label: "Riwayat",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
              ),
              label: "Riwayat",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
              ),
              label: "Riwayat",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
              ),
              label: "Riwayat",
            ),
          ],
          
          backgroundColor: kGrey5Color,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kGrey1Color,
          unselectedIconTheme: IconThemeData(color: kGrey1Color),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: _currentIndex,
          selectedIconTheme: IconThemeData(color: kPrimaryColor),
          onTap: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
        ),
      ),
    );
  }
}
