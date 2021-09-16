import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/components/drawer.dart';
import 'package:ecommerce/components/suggestions.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class ClothesDetails extends StatefulWidget {
  const ClothesDetails({
    Key key,
    @required this.coverImage,
    @required this.image2,
    @required this.image3,
    @required this.image4,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.numOfPieces,
    @required this.discount,
    @required this.index,
  }) : super(key: key);
  final coverImage;
  final image2;
  final image3;
  final image4;
  final title;
  final description;
  final price;
  final numOfPieces;
  final discount;
  final index;

  @override
  _ClothesDetailsState createState() => _ClothesDetailsState();
}

class _ClothesDetailsState extends State<ClothesDetails> {
  String clothesSize;
  bool added = false;
  var suggestionList = [
    {
      "coverImage":
          "https://ae01.alicdn.com/kf/H68daa95fce854e33be5bce42ed1ee67fI/Sexy-Backless-Butterfly-Design-Hollow-Out-Dresses-Women-V-neck-Office-Lady-Dress-2021-Spring-Summer.jpg_220x220xz.jpg",
      "image2":
          "https://ae01.alicdn.com/kf/H9e1fc3b262a54f3e9b2407425db5dac1M/-.jpg_Q90.jpg_.webp",
      "image3":
          "https://ae01.alicdn.com/kf/Hf1788650fd7e46cfaec1e197f20787caH/-.jpg_Q90.jpg_.webp",
      "image4":
          "https://ae01.alicdn.com/kf/Hd9e855a4b2554798b4ec2a5780be316am/-.jpg_Q90.jpg_.webp",
      "title": "فستان حفلات مثير بدون ظهر",
      "description":
          "فستان حفلات مثير بدون ظهر بتصميم على شكل فراشة وفتحة رقبة على شكل v للسيدات مناسب لربيع وصيف 2021 بأكمام قصيرة",
      "price": "13",
      "number_of_distinguished_pieces": "6",
      "discount": "30",
    },
    {
      "coverImage":
          "https://ae01.alicdn.com/kf/Ha9017a5830ef468a85054c9750fc9d51U/2021-vestidos.jpg_Q90.jpg_.webp",
      "image2":
          "https://ae01.alicdn.com/kf/Hbd74d97dbee74fbd8704ad3ae216da5b5/2021-vestidos.jpg_640x640.jpg",
      "image3":
          "https://ae01.alicdn.com/kf/H2e4313698a364b97bcbcb3ce68e03b0e1/2021-vestidos.jpg_640x640.jpg",
      "image4":
          "https://ae01.alicdn.com/kf/H7399dd769c244ac28e3c7d9d7efcc511b/2021-vestidos.jpg_640x640.jpg",
      "title": "Платье летнее женское2021",
      "description":
          "لمرأة vestidos دي موهير عارضة أزياء فضفاضة بلون القطن الكتان طية صدر السترة قميص اللباس",
      "price": "5",
      "number_of_distinguished_pieces": "2",
      "discount": "0",
    },
  ];

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
              "التفاصيل",
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
          body: SlidingUpPanel(
            maxHeight: 550,
            minHeight: 325,
            parallaxEnabled: true,
            parallaxOffset: 0.5,
            margin: EdgeInsets.only(left: 7, right: 7),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)),
            panel: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                              text: widget.title,
                            ),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 17, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: widget.description.length > 175
                                  ? '${widget.description.substring(0, 175)}...'
                                  : widget
                                      .description, //max char appearing is 175
                            ),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (widget.discount == "0")
                        Container()
                      else
                        Container(
                          height: 45,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border(
                              left: BorderSide(
                                color: Colors.blue,
                                width: 0.8,
                              ),
                              right: BorderSide(
                                color: Colors.blue,
                                width: 0.8,
                              ),
                              bottom: BorderSide(
                                color: Colors.blue,
                                width: 0.8,
                              ),
                              top: BorderSide(
                                color: Colors.blue,
                                width: 0.8,
                              ),
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "خصم ${widget.discount}%",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.redAccent),
                          )),
                        ),
                    ],
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (widget.discount == "0")
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          "JOD ${int.parse(widget.price) - (int.parse(widget.price) * int.parse(widget.discount) / 100)}",
                                      style: TextStyle(
                                        color: Colors.red,
                                      )),
                                ]),
                          ),
                        ),
                      )
                    else
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "${widget.price}.0",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  TextSpan(text: "  "),
                                  TextSpan(
                                      text:
                                          "JOD ${int.parse(widget.price) - (int.parse(widget.price) * int.parse(widget.discount) / 100)}",
                                      style: TextStyle(
                                        color: Colors.red,
                                      )),
                                ]),
                          ),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        child: RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "عدد القطع المتبقية : ",
                                ),
                                TextSpan(
                                    text: widget.numOfPieces,
                                    style: TextStyle(color: Colors.redAccent)),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5, right: 8),
                    child: DropdownButton<String>(
                      onTap: () {
                        print("clothesSize=$clothesSize");
                      },
                      value: clothesSize,
                      style: TextStyle(color: Colors.black),
                      items: <String>[
                        'XS',
                        'S',
                        'M',
                        'L',
                        'XL',
                        'XXL',
                        'XXXL',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: Text(
                        "اختر مقاساً",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      onChanged: (String value) {
                        setState(() {
                          clothesSize = value;
                        });
                      },
                    ),
                  ),
                ]),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(11, 5, 11, 0),
                      child: Text(
                        "منتجات مقترحة",
                        style: TextStyle(fontSize: 25, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: suggestionList.length,
                      itemBuilder: (context, i) {
                        return Suggestions(
                          sCoverImage: suggestionList[i]["coverImage"],
                          index: i,
                          sImage2: suggestionList[i]["image2"],
                          sImage3: suggestionList[i]["image3"],
                          sImage4: suggestionList[i]["image4"],
                          title: suggestionList[i]["title"],
                          description: suggestionList[i]["description"],
                          price: suggestionList[i]["price"],
                          numOfPieces: suggestionList[i]
                              ["number_of_distinguished_pieces"],
                          sDiscount: suggestionList[i]["discount"],
                        );
                      }),
                ),
              ],
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(7, 7, 7, 15),
                  child: Container(
                    height: 400.0,
                    width: MediaQuery.of(context).size.width,
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
                          imageUrl: widget.coverImage,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,                        ),
                        CachedNetworkImage(
                          placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                          imageUrl: widget.image2,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,                        ),
                        CachedNetworkImage(
                          placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                          imageUrl: widget.image3,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,                        ),
                        CachedNetworkImage(
                          placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                          imageUrl: widget.image4,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (added)
                  ? Padding(
                      padding: EdgeInsets.only(bottom: 5, top: 3),
                      child: Container(
                        width: 80,
                        height: 50,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Center(
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    added = false;
                                    print("added=$added");
                                    showToast('تمتم إزالة العنصر من قائمة الأمنيات',
                                      context: context,
                                      animation: StyledToastAnimation.slideFromRightFade,
                                      reverseAnimation: StyledToastAnimation.slideToRightFade,
                                      position: StyledToastPosition.bottom,
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 4),
                                      curve: Curves.elasticOut,
                                      reverseCurve: Curves.linear,
                                    );
                                  });
                                },
                                icon: Icon(Icons.favorite_rounded,
                                    color: Colors.white))),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(bottom: 5, top: 3),
                      child: Container(
                        width: 80,
                        height: 50,
                        margin: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Center(
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    added = true;
                                    print("added=$added");
                                    showToast(
                                      "تمتم اضافة العنصر الى قائمة الأمنيات",
                                      context: context,
                                      animation: StyledToastAnimation.slideFromLeftFade,
                                      reverseAnimation: StyledToastAnimation.slideToLeftFade,
                                      position: StyledToastPosition.bottom,
                                      animDuration: Duration(seconds: 1),
                                      duration: Duration(seconds: 4),
                                      curve: Curves.elasticOut,
                                      reverseCurve: Curves.linear,
                                    );
                                  });
                                },
                                icon: Icon(Icons.favorite_outline_rounded,
                                    color: Colors.white))),
                      ),
                    ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5, top: 3),
                    child: Container(
                      width: 300,
                      height: 50,
                      margin: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "اضف الى سلة التسوق",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.add_shopping_cart_rounded,
                                color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

