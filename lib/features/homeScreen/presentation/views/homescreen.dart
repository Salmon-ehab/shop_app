import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/features/homeScreen/presentation/views/widgets/homescreen_widget/home_screen_Gridview.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("SHOP APP",style: GoogleFonts.acme(textStyle:TextStyle(fontSize: 30,color: Colors.white),),),centerTitle: true,
      ),
        body: HomeScreenListview(),
    );
  }
}
