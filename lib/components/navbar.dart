import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
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
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
            ]),
        body: Container(
          constraints: const BoxConstraints.expand(),
          child: Drawer(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://s3-alpha-sig.figma.com/img/57fd/45cd/679b58d7ac1bea0f747cfff1d1197286?Expires=1655683200&Signature=IK~yYqAOXpC~SvD3-CPEuhSB7nl8uA9Yd1EBklwh5Klsncfk5y4mA2r1J-LZFWZ2evQGxPkRxEC7ssT9CjjFBkxaVcZ5c9J92QWQwgRzZHwu2R7w4Vkxv-Y6DxGTNbhYXxT-8P9CfYipPLb-TNsv4k5izkpQQcturOeJWV5t0-dlB6AobOL5oaCLxbBSg4CxRK13zkk0ZoybBugOSuFpYHOUCWPA-feLgpmrjUEdKg-1FQzJkp8v6WsaiVk1xftKoKjReGcSK6mkPRS4sO54xrJqCf53mXIUIoVxGotMAdQEZIDABWmhZhip835dDeVy3Ud60WGvwDMESiSAg6pelQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 120,
                  ),
                  Text(
                    'Homepage',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Dados de Acesso',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Notificações',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Histórico',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Pagamentos',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Ajuda e  Feedback',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
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
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}
