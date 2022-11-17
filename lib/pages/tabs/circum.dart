import 'package:flutter/material.dart';
// import 'package:drag_container/drag/drag_container.dart';
// import 'package:drag_container/drag_container.dart';

class circumPage extends StatefulWidget {
  const circumPage({super.key});

  @override
  State<circumPage> createState() => _circumPageState();
}

class _circumPageState extends State<circumPage>
    with SingleTickerProviderStateMixin {
  ///滑动控制器
  ScrollController scrollController = new ScrollController();

  ///抽屉控制器
  // DragController dragController = new DragController();
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: const Color.fromARGB(255, 255, 97, 1),
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: const EdgeInsets.only(bottom: 15),
            labelStyle: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
            unselectedLabelStyle:
                const TextStyle(fontSize: 13, color: Colors.black),
            tabs: const [
              Tab(
                child: Text(
                  "推荐",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text("推荐", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("玩乐", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("景点", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("购物", style: TextStyle(color: Colors.black)),
              )
            ]),
      ),

      body: Stack(
        children: [
          TabBarView(controller: _tabController, children: const <Widget>[
            /// 全部订单
            Center(
                child: Text(
              '全部订单',
              style: TextStyle(color: Colors.black),
            )),

            /// 已完成订单
            Center(
                child: Text(
              '已完成',
              style: TextStyle(color: Colors.black),
            )),

            /// 未完成订单
            Center(
                child: Text(
              '未完成',
              style: TextStyle(color: Colors.black),
            )),
            Center(
                child: Text(
              '未完成1',
              style: TextStyle(color: Colors.black),
            )),
            Center(
                child: Text(
              '未完成2',
              style: TextStyle(color: Colors.black),
            ))
          ]),
        ],
      ),
    );
  }
}
