import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shop_app/features/homeScreen/presentation/views/homescreen.dart';

import 'onboarding_content.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged:(int index){
        setState(() {
          currentIndex =index;
        });
      },
      itemCount: content.length,
      itemBuilder: (_,i){
        return  Padding(
          padding: const EdgeInsets.only(top: 120,right: 40,left: 40,bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Lottie.asset(content[i].logo),
              SizedBox(height: 15,),
              Center(child: Text(content[i].describtion,style:GoogleFonts.abyssinicaSil(textStyle: TextStyle( fontSize: 35,color: Colors.white),),maxLines:3,textAlign: TextAlign.center,),),
              SizedBox(height: 70,),
              Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(content.length,
                      (index)=>  builddots(index,context))
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>homeScreen()));
                  },
                style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.black12,
                    padding: EdgeInsets.symmetric(vertical: 18,horizontal: 55)
                ),
                child: Text("GET STARTED",style: TextStyle(fontSize:17,color: Colors.white),),

        ),



            ],
          ),
        );
      },
    );

    }
  Container builddots(int index, BuildContext context) {

    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:  Colors.white
      ),
    );

  }

}
