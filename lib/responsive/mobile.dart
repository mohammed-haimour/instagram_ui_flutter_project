import 'package:flutter/material.dart';
import 'package:instgram_project/screens/in_app_screens/add_post.dart';
import 'package:instgram_project/screens/in_app_screens/home_page.dart';
import 'package:instgram_project/screens/in_app_screens/profile.dart';
import 'package:instgram_project/screens/in_app_screens/search.dart';
import 'package:instgram_project/shared/my_colors.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final PageController _pageController = PageController();
  int pageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlack,
      body: PageView(
        physics: const BouncingScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        controller: _pageController,
        children: const [
          HomePage(),
          AddPost(),
          Search(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
          _pageController.jumpToPage(pageIndex);
        },
        selectedFontSize: 0,
        currentIndex: pageIndex,
        enableFeedback: true,
        selectedItemColor: myWhite,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
