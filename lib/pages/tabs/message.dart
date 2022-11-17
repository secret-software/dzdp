import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Column(
          children: [
            Container(
                height: 320,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 10),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255)),
                alignment: Alignment.topLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                        child: DottedBorder(
                            dashPattern: [8, 4],
                            strokeWidth: 2,
                            color: Colors.grey,
                            padding: const EdgeInsets.all(0),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 248, 247, 247)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.camera_alt,
                                    size: 50,
                                  ),
                                  Text("上传视频/照片",
                                      style: TextStyle(color: Colors.grey))
                                ],
                              ),
                            )),
                      ),
                      Column(
                        children: const [
                          TextField(
                            decoration: InputDecoration(
                                hintText: "填写标题更容易上首页哦~",
                                border: InputBorder.none),
                          ),
                          TextField(
                            maxLength: 15,
                            decoration: InputDecoration(
                                hintText: "添加商户/地点的笔记更容易被推荐上首页哦~",
                                border: InputBorder.none),
                          ),
                        ],
                      ),
                      Container(
                          child: Row(
                        children: [
                          const Text("插入"),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 238, 238, 238),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.home,
                                  size: 16,
                                ),
                                Text("店/地点"),
                                Icon(
                                  Icons.navigate_next,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 238, 238, 238),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.local_bar,
                                  size: 16,
                                ),
                                Text("菜品"),
                                Icon(
                                  Icons.navigate_next,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))
                    ])),
            Container(
              height: 130,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 10),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: const [
                        Icon(Icons.location_on),
                        Text(
                          "添加店/地点",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          "分享去处可获得跟多曝光",
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                        Icon(Icons.navigate_next),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(children: [
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 238, 238, 238),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text("三妹私房菜"),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 238, 238, 238),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text("湖南省华通国际货运代理有限公司"),
                      ),
                    ]),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: const ListTile(
                title: Text(
                  "# 添加话题",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                trailing: Icon(
                  Icons.navigate_next,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "笔记发布小贴士",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.info,
                    color: Colors.grey,
                  )
                ],
              ),
            )
          ],
        )),
        Container(
          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          height: 80,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.description), Text("存草稿")],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(254, 102, 52, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "发布",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
