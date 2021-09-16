import 'package:cached_network_image/cached_network_image.dart';

import '../components/drawer.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.black54),
              backgroundColor: Colors.white,
              //backgroundColor: Color(0xFFFF7643),
              title: Text(
                "الأقسام",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_rounded),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            drawer: MyDrawer(),
            body: Container(
              margin: EdgeInsets.only(top: 10),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("Drees");
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Card(
                        color: Colors.blue[50],
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              imageUrl:
                                  "https://image.freepik.com/free-photo/smiling-beautiful-young-woman-pink-mini-dress-posing_155003-9942.jpg",
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 30,
                                  color: Colors.blue[50],
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "فساتين",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Card(
                        color: Colors.blue[50],
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              imageUrl:
                                  "https://media.everlane.com/image/upload/c_fill,dpr_1.0,f_auto,g_face:center,q_auto,w_auto:100:1200/v1/i/fae8c3b3_46e5.jpg",
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 30,
                                  color: Colors.blue[50],
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "قمصان وبلايز",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Card(
                        color: Colors.blue[50],
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              imageUrl:
                                  "https://www.forever21.com/dw/image/v2/BFKH_PRD/on/demandware.static/-/Sites-f21-master-catalog/default/dwff471fc0/1_front_750/00428536-20.jpg?sw=500&sh=750",
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 30,
                                  color: Colors.blue[50],
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "بروتيلات",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: null,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Card(
                        color: Colors.blue[50],
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              imageUrl:
                                  "https://img.ltwebstatic.com/images3_pi/2020/04/27/15879735726750158a642bd2127f0d500ed1cd6513_thumbnail_900x.jpg",
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 30,
                                  color: Colors.blue[50],
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "احذيه",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
