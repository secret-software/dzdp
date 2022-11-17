import 'package:flutter/material.dart';
import '../dzfont.dart';
import '../pages/tabs/circum.dart';
import '../home.dart';
import 'collect.dart';
import 'person.dart';
import '../pages/tabs/message.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../pages/tabs/message.dart';
import '../widgets/bottom_drag_widget.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _Pages = [
    HomePage(),
    BottomDragWidget(),
    MessagePage(),
    CollectPage(),
    PersonPage()
  ];
  void _buttonDialog() {
    showMaterialModalBottomSheet(
      context: context,
      expand: true,
      // useRootNavigator: true,
      // isDismissible: true,
      backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
      builder: (context) => Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text("发笔记", style: TextStyle(color: Colors.black)),
            leading: TextButton(
              onPressed: () {
                print("取消");
                Navigator.pop(context);
              },
              child: const Text("取消",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  print("我要吐槽");
                },
                child: const Text("我要吐槽",
                    style: TextStyle(color: Colors.black, fontSize: 17)),
              ),
            ],
          ),
          body: MessagePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 标题栏

      // body: Stack(
      //   children: const [HomeGridView()],
      // ),
      body: _Pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color.fromRGBO(255, 102, 51, 1),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(dzfont.dazhongdianping), label: "首页"),
          BottomNavigationBarItem(icon: Icon(dzfont.weizhi), label: "周边"),
          BottomNavigationBarItem(icon: Icon(null), label: ""),
          BottomNavigationBarItem(icon: Icon(dzfont.soucang), label: "收藏"),
          BottomNavigationBarItem(icon: Icon(dzfont.geren), label: "我的")
        ],
      ),
      floatingActionButton: Container(
        height: 45,
        width: 45,
        margin: const EdgeInsets.only(top: 53),
        child: FloatingActionButton(
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 253, 30, 0),
                    Color.fromARGB(255, 231, 208, 200)
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )),
            child: const Icon(Icons.add),
          ),
          onPressed: () {
            // setState(() {
            //   _currentIndex = 2;
            // });
            _buttonDialog();
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
