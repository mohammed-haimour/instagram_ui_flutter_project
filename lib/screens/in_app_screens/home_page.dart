import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instgram_project/shared/my_app_ready_widgets/my_post.dart';
import 'package:instgram_project/shared/my_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myBlack,
        appBar: (MediaQuery.of(context).size.width < 600)
            ? AppBar(
                elevation: 0,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.messenger_outline,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.logout,
                      )),
                ],
                backgroundColor: myBlack,
                title: SvgPicture.asset(
                  "assets/img/instagram.svg",
                  height: 32,
                  // ignore: deprecated_member_use
                  color: myWhite,
                ),
              )
            : null,
        body: const MyPost());
  }
}
