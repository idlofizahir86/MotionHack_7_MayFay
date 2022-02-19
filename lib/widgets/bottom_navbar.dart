import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayfay_hackaton/pages/home_page.dart';
import 'package:mayfay_hackaton/pages/keuangan_page.dart';
import 'package:mayfay_hackaton/pages/news_page.dart';
import 'package:mayfay_hackaton/pages/premium_page.dart';
import 'package:mayfay_hackaton/pages/todolist_page.dart';
import 'package:mayfay_hackaton/style.dart';

// ignore: must_be_immutable
class NavBar extends StatefulWidget {
  int currentIndex;

  NavBar({Key? key, this.currentIndex=0}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  
  List<Widget> children = [
    const HomePage(),
    const TodoListPage(),
    const KeuanganPage(),
    const NewsPage(),
    const PremiumPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children.elementAt(widget.currentIndex),
      bottomNavigationBar: Container(
        height: 62,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -4),
              blurRadius: 20,
              color: Color.fromRGBO(0, 0, 0, 0.05),
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                widget.currentIndex == 0
                    ? 'assets/icons/icon_bold_home.svg'
                    : 'assets/icons/icon_home.svg',
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
               widget.currentIndex == 1
                    ? 'assets/icons/icon_bold_todolist.svg'
                    : 'assets/icons/icon_todolist.svg',
              ),
              label: "Todo List",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                widget.currentIndex == 2
                    ? 'assets/icons/icon_bold_wallet.svg'
                    : 'assets/icons/icon_wallet.svg',
              ),
              label: "Wallet",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                widget.currentIndex == 3
                    ? 'assets/icons/icon_bold_news.svg'
                    : 'assets/icons/icon_news.svg',
              ),
              label: "News",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                widget.currentIndex == 4
                    ? 'assets/icons/icon_buy.svg'
                    : 'assets/icons/icon_buy.svg',
                color: widget.currentIndex == 4 ? kPrimaryColor : kGrey4Color,
              ),
              label: "Premium",
            ),
          ],
          backgroundColor: kWhite1Color,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (val) {
            setState(() {
              widget.currentIndex = val;
            });
          },
        ),
      ),
    );
  }
}
