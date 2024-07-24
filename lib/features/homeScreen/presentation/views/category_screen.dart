import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/features/homeScreen/presentation/views/widgets/category_screen_widget/category_listview.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOP APP",style: GoogleFonts.acme(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: CategoryListView(),
    );
  }
}
