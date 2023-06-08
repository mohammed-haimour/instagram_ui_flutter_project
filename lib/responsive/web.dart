import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instgram_project/shared/my_colors.dart';

import '../screens/in_app_screens/add_post.dart';
import '../screens/in_app_screens/home_page.dart';
import '../screens/in_app_screens/profile.dart';
import '../screens/in_app_screens/search.dart';

class WebScerren extends StatefulWidget {
  const WebScerren({Key? key}) : super(key: key);

  @override
  State<WebScerren> createState() => _WebScerrenState();
}

class _WebScerrenState extends State<WebScerren> {
  final PageController _pageController = PageController();
  int pageIndex = 0;

  jumpToIndexedPage(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: (pageIndex == 0) ? myWhite : myDarkWhite,
            ),
            onPressed: () {
              jumpToIndexedPage(0);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: (pageIndex == 1) ? myWhite : myDarkWhite,
            ),
            onPressed: () {
              jumpToIndexedPage(1);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_a_photo,
              color: (pageIndex == 2) ? myWhite : myDarkWhite,
            ),
            onPressed: () {
              jumpToIndexedPage(2);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: (pageIndex == 3) ? myWhite : myDarkWhite,
            ),
            onPressed: () {
              jumpToIndexedPage(3);
            },
          ),
        ],
        backgroundColor: myBlack,
        title: SvgPicture.asset(
          "assets/img/instagram.svg",
          color: myWhite,
          height: 32,
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomePage(),
          Search(),
          AddPost(),
          Profile(),
        ],
      ),
    );
  }
}
