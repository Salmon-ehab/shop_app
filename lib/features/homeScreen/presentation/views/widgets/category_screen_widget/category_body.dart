import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/core/models/product_model.dart';

class CategoryBody extends StatelessWidget {
  final Product product;
  const CategoryBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("${product.imageLink}"),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10),
            child: Text(
              "${product.name}",
              style: GoogleFonts.adamina(
                  textStyle: TextStyle(
                fontSize: 30,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top:8),
            child: Text(
              "${product.brand}",
              style: GoogleFonts.adamina(
                  textStyle: TextStyle(
                    fontSize: 30,
                  )),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15,top: 10),
            child: Row(
              children:
                  [
                 Text(
                      "${product.priceSign} ",
                      style: GoogleFonts.adamina(
                          textStyle: TextStyle(
                            fontSize: 25,
                          )),
                    ),
                 Text(
                  "${product.price}",
                  style: GoogleFonts.adamina(
                      textStyle: TextStyle(
                    fontSize: 25,
                  )),
                ),
                    SizedBox(width: 230),
                    Icon(Icons.star_outlined,color: Colors.amber,),
                    Text(
                      " ${product.rating}",
                      style: GoogleFonts.adamina(
                          textStyle: TextStyle(
                            fontSize: 25,
                          )),
                    ),

                  ],
            ),
          )
        ],
      ),
    );
  }
}
