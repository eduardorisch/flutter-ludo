import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ludoboardgames/ui/screens/boardgames_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      scrollBehavior: MouseScrollBehavior(),
      home: BoardGamesScreen(),
    );
  }
}

class MouseScrollBehavior extends
MaterialScrollBehavior {
@override
Set<PointerDeviceKind> get dragDevices => {
 PointerDeviceKind.touch,
 PointerDeviceKind.mouse,
 PointerDeviceKind.trackpad,
 };
}