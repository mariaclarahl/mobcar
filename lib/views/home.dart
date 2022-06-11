import 'package:flutter/material.dart';
import 'package:mobcar/components/car_list.dart';
import 'package:mobcar/components/modal_new.dart';
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
        body: Container(
            color: const Color(0xfffafafa),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Title 1',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Title 2',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).secondaryHeaderColor)),
                      ElevatedButton(
                        onPressed: () => showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (_) => const ModalNew(),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: (6), horizontal: (12)),
                          primary: (const Color(0xff000000)),
                        ),
                        child: const Text(
                          'Add new',
                          style: TextStyle(
                              color: Color(0xfffafafa),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ]),
                const Divider(
                  color: Colors.black,
                  height: 16,
                ),
                const Expanded(child: CarList())
              ],
            )));
  }
}
