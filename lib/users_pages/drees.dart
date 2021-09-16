import 'package:ecommerce/components/clothing_list.dart';
import '../components/drawer.dart';
import 'package:flutter/material.dart';

class Drees extends StatefulWidget {
  const Drees({Key key}) : super(key: key);

  @override
  _DreesState createState() => _DreesState();
}

var clothesList = [
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
    "https://ae01.alicdn.com/kf/Hcc9e69fc6b0a4d6194d538d26c54b5b7e/2021.jpg_640x640.jpg",
    "image2":
    "https://ae01.alicdn.com/kf/H58d98ec8dcbf488fb73aca018dfa56827/2021.jpg_640x640.jpg",
    "image3":
    "https://ae01.alicdn.com/kf/Hba9cb7817b4b4b00ac14afd5baa99ea5M/2021.jpg_640x640.jpg",
    "image4":
    "https://ae01.alicdn.com/kf/Hfe563d74d2cb409caaa15ce6434e1e77C/2021.jpg_640x640.jpg",
    "title": "فستان صيفي جديد للسيدات موديل 2021",
    "description":
        "مصنوع من الحرير عالي الإمتداد بحمالات مثير وفتحة رقبة شكل v مفتوح من الخلف مكشكش بحاشية ملونة",
    "price": "23",
    "number_of_distinguished_pieces": "3",
    "discount": "0",

  },
  {
    "coverImage":
    "https://ae01.alicdn.com/kf/H9a69a6315569462089efb5118e82ada6F/-.jpg_Q90.jpg_.webp",
    "image2":
    "https://ae01.alicdn.com/kf/H8969a483544647df92a9fc4b632b8be8G/-.jpg_640x640.jpg",
    "image3":
    "https://ae01.alicdn.com/kf/H74e0241e77464ff88bf11d7bb14c3b5af/-.jpg_640x640.jpg",
    "image4":
    "https://ae01.alicdn.com/kf/H4b762cc1bd2f44898e421596f9c0efb1d/-.jpg_640x640.jpg",
    "title": "فساتين النساء السيدات",
    "description":
        "أكمام الخامس الرقبة بروتيل ألف خط بروتيل عادية مطبوعة فستان طويل للنساء 2021 موضة Mujer Vestido",
    "price": "8",
    "number_of_distinguished_pieces": "10",
    "discount": "50",

  },
  {
    "coverImage":
    "https://ae01.alicdn.com/kf/H9a69a6315569462089efb5118e82ada6F/-.jpg_Q90.jpg_.webp",
    "image2":
    "https://ae01.alicdn.com/kf/H8969a483544647df92a9fc4b632b8be8G/-.jpg_640x640.jpg",
    "image3":
    "https://ae01.alicdn.com/kf/H74e0241e77464ff88bf11d7bb14c3b5af/-.jpg_640x640.jpg",
    "image4":
    "https://ae01.alicdn.com/kf/H4b762cc1bd2f44898e421596f9c0efb1d/-.jpg_640x640.jpg",
    "title": "فساتين النساء السيدات",
    "description":
    "أكمام الخامس الرقبة بروتيل ألف خط بروتيل عادية مطبوعة فستان طويل للنساء 2021 موضة Mujer Vestido",
    "price": "8",
    "number_of_distinguished_pieces": "0",
    "discount": "50",

  },

];

class _DreesState extends State<Drees> {
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
              "فساتين",
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
          body: ListView.builder(
              itemCount: clothesList.length,
              itemBuilder: (context, i) {
                if(clothesList[i]["number_of_distinguished_pieces"]=="0")
                  return Container();
                else return ClothingList(
                  coverImage: clothesList[i]["coverImage"],
                  image2: clothesList[i]["image2"],
                  image3: clothesList[i]["image3"],
                  image4: clothesList[i]["image4"],
                  title: clothesList[i]["title"],
                  description: clothesList[i]["description"],
                  price: clothesList[i]["price"],
                  numOfPieces: clothesList[i]["number_of_distinguished_pieces"],
                  discount: clothesList[i]["discount"],
                  index: i,

                );
              }),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Icon(Icons.wysiwyg_rounded),
            backgroundColor: Colors.blue,
          ),
        ));
  }
}
