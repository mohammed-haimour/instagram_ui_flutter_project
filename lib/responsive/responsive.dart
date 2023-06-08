import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final myMobileScreen;
  // ignore: prefer_typing_uninitialized_variables
  final myWebScreen;

  const Responsive(
      {Key? key, required this.myMobileScreen, required this.myWebScreen})
      : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
    return LayoutBuilder(builder: (BuildContext, BoxConstraints) {
      if (BoxConstraints.maxWidth > 600) {
        return widget.myWebScreen;
      } else {
        return widget.myMobileScreen;
      }
    });
  }
}
