import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/homepage.dart';
import 'package:loginapp/signup.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();

    send() {
      if (formstate.currentState!.validate()) {
        print("vaild");
      } else {
        print("not vailed");
      }
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 206, 38, 130),
          title: const Text(
            "Login",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Form(
                key: formstate,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 206, 38, 130))),
                        onPressed: () async {
                          UserCredential cred = await signInWithGoogle();
                          print(cred);
                        },
                        child: const Text("Sign In")),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Don't have an account ?",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        children: [
                          TextSpan(
                              text: "  SignUp",
                              style: const TextStyle(
                                  color: Colors.blue, fontSize: 15),
                              recognizer: TapGestureRecognizer()
                                ..onTap = (() {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                                }))
                        ]),
                  )
                ])),
          ],
        ))),
      ),
    );
  }
}
/*
Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/272/272354.png",
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    focusColor: Colors.black,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    icon: const Icon(Icons.email),
                    labelText: "Email",
                    labelStyle:
                        const TextStyle(fontSize: 20.0, color: Colors.black),
                    hintText: "Enter Your Email",
                    hintStyle: const TextStyle(fontSize: 15)),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                cursorColor: Colors.black,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.black),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    icon: const Icon(Icons.password),
                    labelText: "Password",
                    labelStyle:
                        const TextStyle(fontSize: 20.0, color: Colors.black),
                    hintText: "Enter Your Password",
                    hintStyle: const TextStyle(fontSize: 15)),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 206, 38, 130))),
                onPressed: () async{
                  try {
  final userCredential =
      await FirebaseAuth.instance.signInAnonymously();
  print("Signed in with temporary account.");
} on FirebaseAuthException catch (e) {
  switch (e.code) {
    case "operation-not-allowed":
      print("Anonymous auth hasn't been enabled for this project.");
      break;
    default:
      print("Unkown error.");
  }
}


                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Myhomepage()));
                },
                child: const Text("Sign In")),
            const SizedBox(
              height: 15,
            ),
            RichText(
              text: TextSpan(
                  text: "Don't have an account ?",
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                  children: [
                    TextSpan(
                        text: "  SignUp",
                        style:
                            const TextStyle(color: Colors.blue, fontSize: 15),
                        recognizer: TapGestureRecognizer()
                          ..onTap = (() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignUp()));
                          }))
                  ]),
            )


*/