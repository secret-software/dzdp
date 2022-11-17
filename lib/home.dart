import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'res/gridViewImage.dart';
import 'widgets/bottom_drag_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  //生命周期函数：组件初始化时触发
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  //宫格列表
  List<Widget> _getGirdImages() {
    var imageList = imagesListData.map((value) {
      return Column(
        children: [
          Image.network(
            value["imageUrl"],
            width: 50,
            height: 50,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(value["title"])
        ],
      );
    });
    return imageList.toList();
  }

//文章列表
  List<Widget> _getListData() {
    List<Widget> listData = [];
    for (var i = 0; i < 10; i++) {
      listData.add(Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(252, 252, 252, 0),
          ),
          child: Column(children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              )),
              child: Image.network(
                "https://qcloud.dpfile.com/pc/r9aXFArZdeGKqgG49Mx-FgWsmn8ZjUKsa4jqd3o8EjMf-C60XS1ZLhaJmRN2Hng_G45IiB1YIyNuDTtqzVRwesm_qA1Pf8rFcayTY-n-rG8.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: const Text(
                "长沙最好吃的越南菜！这一碗河粉封神了！",
                style: TextStyle(backgroundColor: Colors.white),
              ),
            ),
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: const EdgeInsets.only(right: 5),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.network(
                        "https://p0.meituan.net/userheadpicbackend/e6ab8812722ccc7cf3bead620bca048f211501.jpg%4048w_48h_1e_1c_1l%7Cwatermark%3D0",
                        fit: BoxFit.fill),
                  ),
                  const Text(
                    "Mike",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 87),
                  const Icon(
                    Icons.thumb_up,
                    size: 12,
                    color: Colors.grey,
                  ),
                  const Text(
                    "77",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ])));
    }
    return listData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(252, 252, 252, 0),
          //搜索框
          title: Container(
            margin: const EdgeInsets.all(10),
            height: 30.0,
            decoration: BoxDecoration(
                color: const Color.fromARGB(153, 255, 255, 255),
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(20.0)),
            child: const TextField(
                decoration: InputDecoration(
                    hintText: "笨萝卜",
                    hintStyle: TextStyle(fontSize: 15.0),
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.only(top: -6, left: 10),
                    border: InputBorder.none)),
          ),
          // 城市选择
          leading: Container(
            padding: const EdgeInsets.only(left: 4.0),
            child: (Row(
              children: const [
                Text(
                  "长沙",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.expand_more,
                  color: Colors.black,
                )
              ],
            )),
          ),
          //更多
          actions: <Widget>[
            IconButton(
                color: Colors.black,
                icon: const Icon(Icons.more_horiz),
                onPressed: () {
                  print('more_horiz Pressed');
                })
          ]),
      body: ListView(
        children: [
          //宫格列表
          Container(
            width: double.infinity,
            height: 185,
            child: Swiper(
              itemBuilder: (context, index) {
                return GridView.count(
                    // padding: const EdgeInsets.only(top: 10),
                    crossAxisCount: 5,
                    scrollDirection: Axis.vertical,
                    children: _getGirdImages());
              },
              itemCount: 2,
              pagination: new SwiperPagination(
                  builder: new DotSwiperPaginationBuilder(
                      color: Colors.grey,
                      activeColor: Color.fromARGB(255, 255, 97, 1))),
            ),
          ),
          //分类列表
          Container(
            child: TabBar(
                isScrollable: true,
                controller: _tabController,
                indicatorColor: const Color.fromARGB(255, 255, 97, 1),
                indicatorWeight: 5,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: const EdgeInsets.only(bottom: 15),
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                unselectedLabelStyle: const TextStyle(fontSize: 13),
                tabs: const [
                  Tab(
                    child: Text(
                      "关注",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text("推荐", style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child: Text("附近", style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child: Text("旅行", style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child: Text("美食", style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child: Text("溜娃", style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child: Text("宠物", style: TextStyle(color: Colors.black)),
                  )
                ]),
          ),

          //文章列表渲染
          GridView.count(
            physics: new NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 0.57,
            children: _getListData(),
          )
        ],
      ),
    );
  }
}
