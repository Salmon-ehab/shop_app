import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/core/apiService.dart';
import 'package:shop_app/core/models/product_model.dart';
import 'package:shop_app/features/homeScreen/presentation/views/widgets/category_screen_widget/category_body.dart';

class CategoryListView extends StatefulWidget {

  @override
  State<CategoryListView> createState() => _listviewimageState();
}

class _listviewimageState extends State<CategoryListView> {
  List<dynamic> data = [];
  List<Product> data2 = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
      data = await ApiServise(Dio()).get(Parameters:"");
      for(var i in data){
        data2.add(Product.fromJson(i));
      }

      setState(() {});
      return data2;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return CategoryBody(product: data2[index],);
        },
        itemCount: data2.length,
      ),
    );
  }
}


/*
  List<Product> productlist =[];

  @override
  void initState() {
    super.initState();
    getalldata();
  }

  Future<List<Product>> getalldata() async {
    Response response = await ApiServise(Dio()).get(Parameters: 'brand=maybelline');
    List<dynamic> products =response.data;
    for(var i in products){
      productlist.add(Product.fromJson(i));
    }
    setState(() {

    });
    return productlist;
  }
*/



