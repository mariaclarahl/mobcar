import 'package:flutter/material.dart';
import 'package:mobcar/components/navbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Builder(
                  builder: (context) => IconButton(
                    icon: Image.asset(
                      "assets/images/menu.png",
                    ),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                  ),
                ),
              ),
            ]),
        endDrawer: const Navbar(),
        body: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: const EdgeInsets.only(top: 40),
              child: const Text('data'))
        ])));
  }
}
