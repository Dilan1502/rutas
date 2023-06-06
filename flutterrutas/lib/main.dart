// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterrutas/src/pages/home_page.dart';
import 'package:go_router/go_router.dart';

import 'src/pages/azul.dart';
import 'src/pages/rojo.dart';
import 'src/pages/verde.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(routes: [
        GoRoute(path: '/' , builder: (context, state) => HomePage(),),
        GoRoute(path: '/verde' , builder: (context, state) => VerdePage(),),
        GoRoute(path: '/azul', builder: (context, state) => AzulPage(),),
        GoRoute(path: '/rojo', builder: (context, state) => RojoPage(),),
      ]),
    );
  }
}