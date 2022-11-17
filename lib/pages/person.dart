import 'package:dzdp/dzfont.dart';
import 'package:flutter/material.dart';
import '../res/girdViewfuc.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          elevation: 0,
          actions: [
            IconButton(
                color: Colors.black,
                onPressed: () {
                  print("sd");
                },
                icon: const Icon(Icons.sms)),
            IconButton(
                color: Colors.black,
                onPressed: () {
                  print("sd");
                },
                icon: const Icon(Icons.settings))
          ],
        ),
        body: Stack(
          children: [
            //背景
            Container(
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  // alignment: Alignment.topCenter,
                  image: NetworkImage(
                    "http://124.222.248.97:8008/bj.jpg",
                  ),
                  fit: BoxFit.fitHeight,
                ))),
            // 主内容
            Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    Expanded(
                        child: ListView(
                      children: const [
                        via(),
                        activity(),
                        funct(),
                        functone(),
                        morelike()
                      ],
                    ))
                  ],
                ))
          ],
        ));
  }
}

//个人信息
class via extends StatelessWidget {
  const via({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: 100,
      // decoration: BoxDecoration(color: Colors.red),
      child: Row(
        children: [
          Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('http://124.222.248.97:8008/dog.jpg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              )),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "纯爱战神",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [Text("粉丝 0  关注 0  获奖 0")],
              )
            ],
          ),
          const SizedBox(width: 60),
          Container(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            decoration: BoxDecoration(
                color: Colors.white38, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: const [
                Text(
                  "个人主页",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.keyboard_arrow_right)
              ],
            ),
          )
        ],
      ),
    );
  }
}

//活动
class activity extends StatelessWidget {
  const activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 60,
      child: Row(
        children: [
          Container(
            // decoration: BoxDecoration(color: Colors.red),
            child: const Icon(
              dzfont.dengji,
              color: Color.fromRGBO(202, 163, 110, 1),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "会员等级",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "写评论助升级",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              )
            ],
          ),
          const SizedBox(width: 15),
          Container(
            // decoration: BoxDecoration(color: Colors.red),
            child: const Icon(
              dzfont.dengji,
              color: Color.fromRGBO(202, 163, 110, 1),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "会员等级",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "写评论助升级",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              )
            ],
          ),
          const SizedBox(width: 15),
          Container(
            // decoration: BoxDecoration(color: Colors.red),
            child: const Icon(
              dzfont.dengji,
              color: Color.fromRGBO(202, 163, 110, 1),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "会员等级",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "写评论助升级",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}

//功能
class funct extends StatefulWidget {
  const funct({super.key});

  @override
  State<funct> createState() => _functState();
}

class _functState extends State<funct> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: GridView.count(
              physics: new NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              mainAxisSpacing: 0,
              crossAxisSpacing: 40,
              // padding: const EdgeInsets.only(top: 10),
              crossAxisCount: 4,
              // scrollDirection: Axis.vertical,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.grade,
                      color: Color.fromRGBO(254, 143, 53, 1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("收藏")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.comment, color: Color.fromRGBO(254, 143, 53, 1)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("待评价")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.access_time,
                        color: Color.fromRGBO(254, 143, 53, 1)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("最近浏览")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.thumb_up,
                        color: Color.fromRGBO(254, 143, 53, 1)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("赞过")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.content_paste,
                        color: Color.fromRGBO(253, 178, 6, 1)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("订单")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.local_play,
                        color: Color.fromRGBO(253, 178, 6, 1)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("卡卷")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.stars, color: Color.fromRGBO(253, 178, 6, 1)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("积分")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.account_balance_wallet,
                        color: Color.fromRGBO(253, 178, 6, 1)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("钱包")
                  ],
                )
              ]),
        )
      ],
    );
  }
}

//功能1
class functone extends StatefulWidget {
  const functone({super.key});

  @override
  State<functone> createState() => _functoneState();
}

class _functoneState extends State<functone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: GridView.count(
              physics: new NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              mainAxisSpacing: 0,
              crossAxisSpacing: 40,
              // padding: const EdgeInsets.only(top: 10),
              crossAxisCount: 4,
              // scrollDirection: Axis.vertical,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.grade,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("收藏")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.comment, color: Colors.grey),
                    SizedBox(
                      height: 5,
                    ),
                    Text("待评价")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.access_time, color: Colors.grey),
                    SizedBox(
                      height: 5,
                    ),
                    Text("最近浏览")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.thumb_up, color: Colors.grey),
                    SizedBox(
                      height: 5,
                    ),
                    Text("赞过")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.content_paste, color: Colors.grey),
                    SizedBox(
                      height: 5,
                    ),
                    Text("订单")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.local_play, color: Colors.grey),
                    SizedBox(
                      height: 5,
                    ),
                    Text("卡卷")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.stars, color: Colors.grey),
                    SizedBox(
                      height: 5,
                    ),
                    Text("积分")
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.account_balance_wallet, color: Colors.grey),
                    SizedBox(
                      height: 5,
                    ),
                    Text("钱包")
                  ],
                )
              ]),
        )
      ],
    );
  }
}

class morelike extends StatefulWidget {
  const morelike({super.key});

  @override
  State<morelike> createState() => _morelikeState();
}

class _morelikeState extends State<morelike> {
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
                          width: 47,
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
