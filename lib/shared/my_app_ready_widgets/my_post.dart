import 'package:flutter/material.dart';

import '../my_colors.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          color: myBlack, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(
          vertical: 11, horizontal: widthScreen > 600 ? widthScreen / 6 : 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                          // widget.snap["profileImg"],
                          "https://i.pinimg.com/564x/94/df/a7/94dfa775f1bad7d81aa9898323f6f359.jpg"),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      // widget.snap["username"],
                      "Layla hassan",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
          ),
          Image.network(
            // widget.snap["postUrl"],
            "https://cdn1-m.alittihad.ae/store/archive/image/2021/10/22/6266a092-72dd-4a2f-82a4-d22ed9d2cc59.jpg?width=1300",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_outline),
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
              width: double.infinity,
              child: Text(
                "10 Likes",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 12, color: myDarkWhite),
              )),
          Row(
            children: [
              const SizedBox(
                width: 9,
              ),
              Text(
                // "${widget.snap["username"]}",
                "USERNAME ",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14, color: myDarkWhite),
              ),
              Text(
                // " ${widget.snap["description"]}",
                " Sidi Bou Said ♥",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14, color: myDarkWhite),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                margin: const EdgeInsets.fromLTRB(10, 13, 9, 10),
                width: double.infinity,
                child: Text(
                  "view all 100 comments",
                  style: TextStyle(fontSize: 12, color: myDarkWhite),
                  textAlign: TextAlign.start,
                )),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 9, 10),
              width: double.infinity,
              child: Text(
                "10June 2022",
                style: TextStyle(fontSize: 10, color: myDarkWhite),
                textAlign: TextAlign.start,
              )),
        ],
      ),
    );
  }
}
