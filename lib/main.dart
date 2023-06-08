import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instgram_project/screens/auth/sing_in.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,

      // home: const Responsive(
      //   myMobileScreen: MobileScreen(),
      //   myWebScreen: WebScerren(),
      // ),

      home: const SingIn(),
    );
  }
}
