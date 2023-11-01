import 'package:flutter/material.dart';
import 'package:netflix/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix/view/download_screen/download_screen.dart';
import 'package:netflix/view/home_screen/home_screen.dart';
import 'package:netflix/view/more_screen/more_screen.dart';
import 'package:netflix/view/search_screen/search_screen.dart';
import 'package:netflix/utils/color_constant/color_constant.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  List<Widget> myWidgetList = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 70, 64, 64),
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"), //items always have to greater than 3
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.playlist_add), label: "ComingSoon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_sharp), label: "DOwnload"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
          ]),
    ); //return chyunnathinu epolm ; vnm
  }
}
