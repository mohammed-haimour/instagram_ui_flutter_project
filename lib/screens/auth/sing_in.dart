// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:instgram_project/responsive/mobile.dart';
import 'package:instgram_project/responsive/responsive.dart';
import 'package:instgram_project/screens/auth/sing_up.dart';
import 'package:instgram_project/screens/in_app_screens/home_page.dart';
import 'package:instgram_project/shared/my_colors.dart';

import '../../shared/constant/decoration_text_field.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    bool isVisable = false;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    bool isLoading = false;

    // signIn() async {
    //   setState(() {
    //     isLoading = true;
    //   });

    //   try {
    //     final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    //         email: emailController.text, password: passwordController.text);
    //   } on FirebaseAuthException catch (e) {
    //     showSnackBar(context, "ERROR :  ${e.code} ");
    //   }

    //   setState(() {
    //     isLoading = false;
    //   });
    // }

    // ignore:
    @override
    void dispose() {
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    // final googleSignInProvider = Provider.of<GoogleSignInProvider>(context);
    return Scaffold(
        backgroundColor: myBlack,
        appBar: AppBar(
          // backgroundColor: appbarGreen,
          title: const Text("Sign in"),
        ),
        body: Center(
            child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
                    TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        decoration: decorationTextfield.copyWith(
                            hintText: "Enter Your Email : ",
                            suffixIcon: const Icon(Icons.email))),
                    const SizedBox(
                      height: 33,
                    ),
                    TextField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: isVisable ? false : true,
                        decoration: decorationTextfield.copyWith(
                            hintText: "Enter Your Password : ",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisable = !isVisable;
                                  });
                                },
                                icon: isVisable
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off)))),
                    const SizedBox(
                      height: 33,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MobileScreen()),
                        );
                      },
                      style: ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all(BTNgreen),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(12)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                      ),
                      child: isLoading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              "Sign in (go to main screen No Need To Enter Data)",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 19),
                            ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Do not have an account?",
                            style: TextStyle(fontSize: 18)),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SingUp()),
                              );
                            },
                            child: const Text('sign up',
                                style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline))),
                      ],
                    ),
                  ]),
            ),
          ),
        )));
  }
}
