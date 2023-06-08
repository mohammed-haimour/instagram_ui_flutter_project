import 'package:flutter/material.dart';
import 'package:instgram_project/shared/my_colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          cursorColor: myWhite,
          decoration: const InputDecoration(
            label: Text(
              "search for person 🧐",
              style: TextStyle(color: Colors.white),
            ),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
          ),
        ),
      ),
      body: const Center(
        child: Icon(
          Icons.search,
          size: 80,
        ),
      ),
    );
  }
}
