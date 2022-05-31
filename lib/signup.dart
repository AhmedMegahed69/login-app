import 'package:flutter/material.dart';
import 'package:loginapp/homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 206, 38, 130),
          title: const Text(
            "SignUp",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFjyDK3m3tDPvaB3sYG8yIvatfRQKW4PgSCg&usqp=CAU",
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
                    icon: const Icon(Icons.person),
                    labelText: "Gender",
                    labelStyle:
                        const TextStyle(fontSize: 20.0, color: Colors.black),
                    hintText: "Enter Your Gender",
                    hintStyle: const TextStyle(fontSize: 15)),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 206, 38, 130))),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Myhomepage()));
                },
                child: const Text(" Sign Up")),
          ],
        ))),
      ),
    );
  }
}
