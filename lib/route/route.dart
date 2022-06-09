import 'package:flutter/material.dart';
import 'package:mobcar/views/home.dart';

const String home = 'home';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case home:
      return MaterialPageRoute(builder: (context) => const Home());

    default:
      throw ('Esse nome de rota não existe');
  }
}
