import 'package:cached_network_image/cached_network_image.dart';

import '../components/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "الصفحة الرئيسية",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,

              bottom: PreferredSize(
                preferredSize: MediaQuery.of(context).size * 0.09,
                child: Container(
                  height: 70,
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey,
                        focusColor: Colors.grey,
                        hintText: "بحث",
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search_rounded),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        )),
                  ),
                ),
              ),
            ),
            drawer: MyDrawer(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  //Start Slider
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(3, 6), // changes position of shadow
                          ),
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: double.infinity,
                      child: Carousel(
                        animationCurve: Curves.easeInOut,
                        animationDuration: Duration(milliseconds: 500),
                        boxFit: BoxFit.cover,
                        borderRadius: true,
                        radius: Radius.circular(10.0),
                        dotBgColor: Colors.blue.withOpacity(0.3),
                        indicatorBgPadding: 15,
                        images: [
                          CachedNetworkImage(
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            imageUrl:
                                'https://image.freepik.com/free-photo/magnificent-woman-long-bright-skirt-dancing-studio-carefree-inspired-female-model-posing-with-pleasure-yellow_197531-11084.jpg',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                          ),
                          CachedNetworkImage(
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            imageUrl:
                                'https://image.freepik.com/free-photo/shapely-girl-with-trendy-hairstyle-posing-with-hand-up-striped-wall-holding-phone-full-length-portrait-pleased-tanned-young-lady-white-shoes-wearing-sunglasses-bracelets_197531-2770.jpg',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                          ),
                          CachedNetworkImage(
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            imageUrl:
                                'https://image.freepik.com/free-photo/stunning-curly-female-model-jumping-purple-indoor-portrait-slim-girl-bright-yellow-dress_197531-10836.jpg',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                          ),
                          CachedNetworkImage(
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            imageUrl:
                                'https://image.freepik.com/free-photo/full-length-shot-glad-curly-woman-striped-pants-jumping-purple-wall-indoor-portrait-wonderful-girl-sunglasses-fooling-around_197531-5125.jpg',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //End Slider

                  //Start categories
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(11, 15, 11, 5),
                        child: Text(
                          "الأقسام",
                          style: TextStyle(fontSize: 25, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
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
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
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
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
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
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
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
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
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
                  ),

                  //End categories

                  //Start New Products
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(11, 20, 11, 5),
                        child: Text(
                          "منتجات جديدة",
                          style: TextStyle(fontSize: 25, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.29,
                    child: GridView(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      children: [
                        InkWell(
                          onTap: null,
                          child: GridTile(
                            child: Card(
                                elevation: 5,
                                child: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  imageUrl:
                                      'https://images.westend61.de/0001333188pw/portrait-of-two-teenage-girls-wearing-matching-clothes-in-front-of-blue-background-ERRF02695.jpg',
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                )
                                // Image.network(
                                //     'https://images.westend61.de/0001333188pw/portrait-of-two-teenage-girls-wearing-matching-clothes-in-front-of-blue-background-ERRF02695.jpg',
                                //     fit: BoxFit.cover),

                                ),
                          ),
                        ),
                        InkWell(
                          onTap: null,
                          child: GridTile(
                            child: Card(
                                elevation: 5,
                                child: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  imageUrl:
                                      'https://image.freepik.com/free-photo/young-beautiful-bride-woman-long-white-wedding-dress-whit_7502-4888.jpg',
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height,
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: null,
                          child: GridTile(
                              child: CachedNetworkImage(
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            imageUrl:
                                'https://image.freepik.com/free-photo/fashion-polo-shirt-men_74190-4858.jpg',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                          )),
                        ),
                        InkWell(
                          onTap: null,
                          child: GridTile(
                              child: CachedNetworkImage(
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            imageUrl:
                                'https://i.pinimg.com/474x/a3/8e/0a/a38e0adfe63e20249419d4bf0a8a8ecb.jpg',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                          )),
                        ),
                      ],
                    ),
                  )
                  //End New Products
                ],
              ),
            ),
            bottomNavigationBar: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5, top: 3),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("UserProfile");
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Icon(Icons.person_rounded, color: Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5, top: 3),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("favoriteListPage");
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Icon(Icons.favorite, color: Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5, top: 3),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("ShoppingCart");
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child:
                          Icon(Icons.shopping_cart_rounded, color: Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5, top: 3),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("HomePage");
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Icon(Icons.home_rounded, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )));
  }
}
