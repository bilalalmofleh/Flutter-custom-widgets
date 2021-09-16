import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/users_pages/clothesDetails.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  const CartList(
      {Key key,
      @required this.coverImage,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.image2,
      @required this.image3,
      @required this.image4,
      @required this.numOfPieces,
      @required this.discount,
      @required this.index})
      : super(key: key);
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
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ClothesDetails(
                  coverImage: coverImage,
                  image2: image2,
                  image3: image3,
                  image4: image4,
                  title: title,
                  description: description,
                  price: price,
                  numOfPieces: numOfPieces,
                  discount: discount,
                  index: index)),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8),
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Card(
          elevation: 5,
          shadowColor: Colors.blue[300],
          child: Row(
            children: [
              SizedBox(
                width: 2,
              ),
              Container(
                height: 170,
                width: 170,
                child: CachedNetworkImage(
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  imageUrl: coverImage,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    //Title and description
                    Text(
                      title.length > 25
                          ? '${title.substring(0, 22)}...'
                          : title, //max char appearing is 22
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      description.length > 100
                          ? '${description.substring(0, 100)}...'
                          : description, //max char appearing is 22
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //Cost
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${int.parse(price) - (int.parse(price) * int.parse(discount) / 100)} JOD ", //max 28  char
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("عدد :"),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_down_rounded)),
                          Text("1"),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_up_rounded)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
