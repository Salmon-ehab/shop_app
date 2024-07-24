import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/features/homeScreen/presentation/views/category_screen.dart';
import 'package:shop_app/features/homeScreen/presentation/views/widgets/homescreen_widget/home_screen_itemlist.dart';

class HomeScreenBody extends StatelessWidget {
  final String image;
  final String name;

  const HomeScreenBody({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>CategoryScreen()));

      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 250,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(image)
                  ),
                ),
              ),
              Container(
                width:250,
                height: 50,
                child:
                Center(child: Text(name,style: TextStyle(fontSize: 30,color: Colors.white),)),
                color: Colors.black45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
