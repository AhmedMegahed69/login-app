import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginapp/login.dart';

class Pageveiews extends StatefulWidget {
  const Pageveiews({Key? key}) : super(key: key);

  @override
  State<Pageveiews> createState() => _PageveiewsState();
}

class Data {
  final String imageUrl;

  Data({
    required this.imageUrl,
  });
}

class _PageveiewsState extends State<Pageveiews> {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 7), (timer) {
      if (currentindex < 2) {
        currentindex++;
        _pageController.animateToPage(currentindex,
            duration: const Duration(milliseconds: 300), curve: Curves.linear);
      }
    });
  }

  int currentindex = 0;
  List<Data> mydata = [
    Data(
      imageUrl:
          "https://scontent.fcai19-1.fna.fbcdn.net/v/t31.18172-8/21752950_1603752749683797_2967016541600544259_o.png?_nc_cat=1&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=gnC3H81mKpEAX-Y9Ow3&_nc_ht=scontent.fcai19-1.fna&oh=00_AT-gGKvHNsEgxHA7qyMUMJhvmPpzHjUzOSSWiLWuU_TGlw&oe=62893C83",
    ),
    Data(
      imageUrl:
          "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/272953763_5137760072949696_2524078320332408739_n.png?_nc_cat=104&ccb=1-5&_nc_sid=e3f864&_nc_ohc=gqc4g4bNyMEAX_NCNlW&tn=fWFTjgIJrFE7iOU1&_nc_ht=scontent.fcai19-1.fna&oh=00_AT-8cLLsX36yehUXIxnxglg7ThE4ZmMk8J0HomBtec-K-w&oe=62690D75",
    ),
    Data(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhpRjHDE79pxxPgHcflj4pRmHHuAB_d7Xb0w&usqp=CAU",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(children: [
            PageView(
              controller: _pageController,
              children: mydata
                  .map((item) => SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ))
                  .toList(),
              onPageChanged: (value) {
                setState(() {
                  currentindex = value;
                  if (currentindex == 2) {
                    Future.delayed(
                        const Duration(seconds: 1),
                        () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const Login())));
                  }
                });
              },
            ),
            Align(
              alignment: const Alignment(0, 0.7),
              child: Indicator(currentindex),
            ),
            Align(
                alignment: const Alignment(0, 0.93),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 120, 20, 150))),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const Login()));
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                ))
          ]),
        ));
  }
}

class Indicator extends StatelessWidget {
  final int index;
  @override
  Indicator(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildercontainer(index == 0
            ? Color.fromARGB(255, 120, 20, 150)
            : Color.fromARGB(255, 175, 170, 177)),
        buildercontainer(index == 1
            ? Color.fromARGB(255, 120, 20, 150)
            : Color.fromARGB(255, 191, 189, 192)),
        buildercontainer(index == 2
            ? Color.fromARGB(255, 120, 20, 150)
            : Color.fromARGB(255, 188, 185, 189)),
      ],
    );
  }

  Container buildercontainer(Color color) {
    return Container(
      margin: const EdgeInsets.all(6),
      width: 16,
      height: 16,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
