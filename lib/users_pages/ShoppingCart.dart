import 'package:ecommerce/components/cart_list.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

var cartList = [
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

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text("سلة التسوق"),
          ),
          body: Column(
            children: [
              Container(
                height:  MediaQuery.of(context).size.height*0.73,
                width: MediaQuery.of(context).size.width,
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
                child: ListView.builder(
                    itemCount: cartList.length,
                    itemBuilder: (context, i) {
                      return CartList(
                        coverImage: cartList[i]["coverImage"],
                        image2: cartList[i]["image2"],
                        image3: cartList[i]["image3"],
                        image4: cartList[i]["image4"],
                        title: cartList[i]["title"],
                        description: cartList[i]["description"],
                        price: cartList[i]["price"],
                        numOfPieces: cartList[i]
                            ["number_of_distinguished_pieces"],
                        discount: cartList[i]["discount"],
                        index: i,
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("المجموع : ",
                      style: TextStyle(fontSize: 25),),
                    Text("\$24",
                      style: TextStyle(fontSize: 25, color: Colors.blue,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){}, child: Text("شراء"))
                  ],
                ),
              )

            ],
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child:
                        Icon(Icons.shopping_cart_rounded, color: Colors.white),
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
