import 'package:dzdp/pages/tabs.dart';
import 'package:flutter/material.dart';
import './res/gridViewImage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, //关闭debug图标
        home: Tabs());
  }
}
