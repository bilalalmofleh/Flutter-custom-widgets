import 'package:ecommerce/components/wish_list.dart';
import 'package:flutter/material.dart';

class FavoriteListPage extends StatefulWidget {
  const FavoriteListPage({Key key}) : super(key: key);

  @override
  _FavoriteListPageState createState() => _FavoriteListPageState();
}

var wishList = [
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

class _FavoriteListPageState extends State<FavoriteListPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text("المفضلة"),
          ),
          body: ListView.builder(
              itemCount: wishList.length,
              itemBuilder: (context, i) {
                return WishList(
                  coverImage: wishList[i]["coverImage"],
                  image2: wishList[i]["image2"],
                  image3: wishList[i]["image3"],
                  image4: wishList[i]["image4"],
                  title: wishList[i]["title"],
                  description: wishList[i]["description"],
                  price: wishList[i]["price"],
                  numOfPieces: wishList[i]["number_of_distinguished_pieces"],
                  discount: wishList[i]["discount"],
                  index: i,
                );
              }),
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Icon(Icons.favorite, color: Colors.white),
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
