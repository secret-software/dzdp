import 'package:flutter/material.dart';
import '../pages/collectpage/allpage.dart';

class CollectPage extends StatefulWidget {
  const CollectPage({super.key});

  @override
  State<CollectPage> createState() => _CollectPageState();
}

class _CollectPageState extends State<CollectPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(252, 252, 252, 0),
        title: const Text(
          "收藏",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Column(
            children: [
              IconButton(
                  color: Colors.black,
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    print('more_horiz Pressed');
                  }),
              const Text(
                "搜索",
                style:
                    TextStyle(fontSize: 11, color: Colors.black, height: 0.1),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  color: Colors.black,
                  icon: const Icon(Icons.folder_open),
                  onPressed: () {
                    print('more_horiz Pressed');
                  }),
              const Text(
                "专辑",
                style:
                    TextStyle(fontSize: 11, color: Colors.black, height: 0.1),
              )
            ],
          ),
          IconButton(
              color: Colors.black,
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                print('more_horiz Pressed');
              })
        ],
        bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorColor: const Color.fromARGB(255, 255, 97, 1),
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: const EdgeInsets.only(bottom: 15),
            labelStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            unselectedLabelStyle: const TextStyle(fontSize: 14),
            tabs: const [
              Tab(
                child: Text(
                  "全部",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "商户",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "评价/笔记",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "团购",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "其他",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        allpage(),
        ListView(
          children: const [
            ListTile(
              title: Text("商户"),
            ),
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("评价/笔记"),
            ),
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("团购"),
            ),
          ],
        ),
        ListView(
          children: const [
            ListTile(
              title: Text("其他"),
            ),
          ],
        )
      ]),
    );
  }
}
