import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/users_pages/clothesDetails.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  const Suggestions(
      {Key key,
      this.sCoverImage,
      this.index,
      this.sImage2,
      this.sImage3,
      this.sImage4,
      this.title,
      this.description,
      this.price,
      this.numOfPieces, this.sDiscount})
      : super(key: key);
  final sCoverImage;
  final index;
  final sImage2;
  final sImage3;
  final sImage4;
  final title;
  final description;
  final price;
  final numOfPieces;
  final sDiscount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ClothesDetails(
                coverImage: sCoverImage,
                image2: sImage2,
                image3: sImage3,
                image4: sImage4,
                title: title,
                description: description,
                price: price,
                numOfPieces:numOfPieces,
                discount:sDiscount,
                  index:index

              )),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 5, right: 5),
        width: 150,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child:
          CachedNetworkImage(
            placeholder: (context, url) =>
            const CircularProgressIndicator(),
            imageUrl: sCoverImage,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
        ),
      ),
    );
  }
}
