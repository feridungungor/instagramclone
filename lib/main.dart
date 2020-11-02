import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Instagrammainpage(),
    );
  }
}

class Instagrammainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.add),
            Icon(Icons.favorite),
            Icon(Icons.person),
          ],
        ),
      ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Feridun GÜNGÖR",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.person_add,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.list,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(color: Colors.grey, spreadRadius: 7),
                      BoxShadow(color: Colors.white, spreadRadius: 6),
                      BoxShadow(color: Colors.grey, spreadRadius: 2)
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "https://pbs.twimg.com/profile_images/1229135225051066370/skwD0UUP_400x400.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          personelTextData(
                            "1.858",
                            "posta",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          personelTextData("107K", "followers"),
                          SizedBox(
                            width: 20,
                          ),
                          personelTextData("994", "following"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "Contact",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 30,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [BoxShadow(color: Colors.grey)]),
                            child: Center(
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "Feridun GÜNGÖR",
                        style: infotexts,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: Container(
                          margin: EdgeInsets.all(2),
                          child: Center(
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Follow me canıım",
                  style: infotexts,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "feridun.gungor@btk.gov.tr",
                  style: infotexts,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              thickness: 1.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.apps,
                  color: Colors.grey,
                  size: 30,
                ),
                Icon(
                  Icons.list,
                  color: Colors.grey,
                  size: 30,
                ),
                Icon(
                  Icons.perm_contact_calendar_rounded,
                  color: Colors.grey,
                  size: 30,
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: Icon(
                    Icons.more,
                    color: Colors.grey,
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.greenAccent,
                  child: GridView.builder(
                    itemCount: 50,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network("https://picsum.photos/200/200");
                    },
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }

  Widget personelTextData(String topdata, String bottomdata) {
    return Column(
      children: [
        Text(
          topdata,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          bottomdata,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        )
      ],
    );
  }

  TextStyle infotexts = TextStyle(fontSize: 16);

  Widget gridviewContainer() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: Colors.greenAccent),
    );
  }
}
