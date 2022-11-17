import 'package:flutter/material.dart';

class allpage extends StatefulWidget {
  const allpage({super.key});

  @override
  State<allpage> createState() => _allpageState();
}

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
            width: 210,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            )),
            child: Image.network(
              "http://124.222.248.97:8008/scsp.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: 210,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            child: const Text(
              "柒酒烤肉（龙塘店）",
              style: TextStyle(backgroundColor: Colors.white, fontSize: 14),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Row(
              children: const [
                Icon(
                  Icons.grade,
                  color: Color.fromRGBO(250, 102, 58, 1),
                  size: 13,
                ),
                Icon(
                  Icons.grade,
                  color: Color.fromRGBO(250, 102, 58, 1),
                  size: 13,
                ),
                Icon(
                  Icons.grade,
                  color: Color.fromRGBO(250, 102, 58, 1),
                  size: 13,
                ),
                Icon(
                  Icons.grade,
                  color: Color.fromRGBO(250, 102, 58, 1),
                  size: 13,
                ),
                Icon(
                  Icons.grade,
                  color: Colors.grey,
                  size: 13,
                ),
                Text(
                  "4.1",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(250, 102, 58, 1),
                  ),
                ),
                Text(
                  "￥57/人",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "城西安置小区",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        "长沙县",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("服务还挺周到的")
                ],
              )),
        ])));
  }
  return listData;
}

class _allpageState extends State<allpage> {
  @override
  Widget build(BuildContext context) {
    // 收藏列表
    return ListView(
      children: [
        //收藏商品详情
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 10,
            ),
            //图片
            Container(
              height: 80,
              child: Row(children: [
                Image.network("http://124.222.248.97:8008/scsp.jpg")
              ]),
            ),
            const SizedBox(width: 15),
            //详细信息
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "柒酒烤肉（龙塘店）",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.grade,
                        color: Color.fromRGBO(250, 102, 58, 1),
                        size: 12,
                      ),
                      Icon(
                        Icons.grade,
                        color: Color.fromRGBO(250, 102, 58, 1),
                        size: 12,
                      ),
                      Icon(
                        Icons.grade,
                        color: Color.fromRGBO(250, 102, 58, 1),
                        size: 12,
                      ),
                      Icon(
                        Icons.grade,
                        color: Color.fromRGBO(250, 102, 58, 1),
                        size: 12,
                      ),
                      Icon(
                        Icons.grade,
                        color: Colors.grey,
                        size: 12,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "4.1",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(250, 102, 58, 1),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "793条 ￥57/人",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "融合烤肉，城西安置小区",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            //营业状态，地址
            SizedBox(width: 70),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 207, 207, 207)),
                  child: Text(
                    "暂停营业",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    "长沙县",
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 100),
        const Text(
          "———————— 你可能还喜欢 ————————",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        GridView.count(
          physics: new NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisSpacing: 0.1,
          crossAxisCount: 2,
          childAspectRatio: 0.69,
          children: _getListData(),
        )
      ],
    );
  }
}
