import 'package:flutter/material.dart';
import 'package:mobcar/components/car_list.dart';
import 'package:mobcar/components/modal_new.dart';
import 'package:mobcar/components/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  HomeState();

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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: const [
                      Text(
                        'Olá John Doe',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Veículos Cadastrados',
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
                            'Adicionar Novo',
                            style: TextStyle(
                                color: Color(0xfffafafa),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ]),
                ),
                const Divider(
                  color: Colors.black,
                  height: 16,
                ),
                const Expanded(child: CarList()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/direitos.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Text(
                              '2022. All rights reserved to Mobcar.',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).primaryColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
