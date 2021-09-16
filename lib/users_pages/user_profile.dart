import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/components/wish_list.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

var userPurchases = [
  {
    "coverImage":
        "https://ae01.alicdn.com/kf/H4743a643f110498db3c1ece73ab7d1e6D/-.jpg_640x640.jpg",
    "image2":
        "https://ae01.alicdn.com/kf/Hd978084b3bb94ce780db2f9e687b1542W/-.jpg_Q90.jpg_.webp",
    "image3":
        "https://ae01.alicdn.com/kf/H5eb1b2a4f5b04a5d8e9d92f15f4d356ct/-.jpg_640x640.jpg",
    "image4":
        "https://ae01.alicdn.com/kf/H5a6a8951fa4f4b20bdef4a5ebedd203dZ/-.jpg_640x640.jpg",
    "title": "فستان كاجوال موضة",
    "description":
        "مقاس كبير فستان فضفاض مزاجي منتصف كم فستان  max char appearing in list page is 22 but in Details is 175",
    "price": "15",
    "number_of_distinguished_pieces": "4",
    "discount": "20",
  },
  {
    "coverImage":
        "https://ae01.alicdn.com/kf/H4743a643f110498db3c1ece73ab7d1e6D/-.jpg_640x640.jpg",
    "image2":
        "https://ae01.alicdn.com/kf/Hd978084b3bb94ce780db2f9e687b1542W/-.jpg_Q90.jpg_.webp",
    "image3":
        "https://ae01.alicdn.com/kf/H5eb1b2a4f5b04a5d8e9d92f15f4d356ct/-.jpg_640x640.jpg",
    "image4":
        "https://ae01.alicdn.com/kf/H5a6a8951fa4f4b20bdef4a5ebedd203dZ/-.jpg_640x640.jpg",
    "title": "فستان كاجوال موضة",
    "description":
        "مقاس كبير فستان فضفاض مزاجي منتصف كم فستان  max char appearing in list page is 22 but in Details is 175",
    "price": "15",
    "number_of_distinguished_pieces": "4",
    "discount": "20",
  },
];

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text("الملف الشخصي"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.settings),
              )
            ],
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child:
                      CachedNetworkImage(
                        placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                        imageUrl:
                        "https://picsum.photos/300/300?random=1",                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                          "Name",
                          style: TextStyle(color: Colors.black,fontSize: 20),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "email@demo.com",
                        style: TextStyle(color: Colors.black,fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "0792689569",
                        style: TextStyle(color: Colors.black,fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "المشتريات",
                        style: TextStyle(fontSize: 25, color: Colors.blue,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height:  MediaQuery.of(context).size.height*0.42,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5), //border corner radius
                          boxShadow:[
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radius
                              offset: Offset(0, 5), // changes position of shadow
                              //first parameter of offset is left-right
                              //second parameter is top to down
                            ),
                            //you can set more BoxShadow() here
                          ],
                        ),
                      child:  ListView.builder(
                          itemCount: userPurchases.length,
                          itemBuilder: (context, i) {
                            return WishList(
                              coverImage: userPurchases[i]["coverImage"],
                              image2: userPurchases[i]["image2"],
                              image3: userPurchases[i]["image3"],
                              image4: userPurchases[i]["image4"],
                              title: userPurchases[i]["title"],
                              description: userPurchases[i]["description"],
                              price: userPurchases[i]["price"],
                              numOfPieces: userPurchases[i]["number_of_distinguished_pieces"],
                              discount: userPurchases[i]["discount"],
                              index: i,
                            );
                          })
                    ),

                  ],
                ),

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
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Icon(Icons.person_rounded, color: Colors.white),
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
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Icon(Icons.home_rounded, color: Colors.blue),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
