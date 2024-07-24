import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop_app/core/assets/images.dart';
import 'package:shop_app/features/splashscreen/presentation/views/onboarding.dart';

class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

class _splashbodyState extends State<splashbody> with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<Offset> slidinganimation1;
  late Animation<Offset> slidinganimation2;
  late Animation<Offset> slidinganimation3;
  late Animation<Offset> slidinganimation4;
  @override
  void initState() {
    super.initState();
    animationController =AnimationController(vsync: this,duration: Duration(seconds: 4));
    slidinganimation1=Tween<Offset>(begin:Offset(-5, 0) ,end:Offset(0, 0) ).animate(animationController);
    slidinganimation2=Tween<Offset>(begin:Offset(-2, 0) ,end:Offset(0, 0) ).animate(animationController);
    slidinganimation3=Tween<Offset>(begin:Offset(2, 0) ,end:Offset(0, 0) ).animate(animationController);
    slidinganimation4=Tween<Offset>(begin:Offset(5, 0) ,end:Offset(0, 0) ).animate(animationController);
    animationController.forward();
    setState(() {
      _navigateToHome();
    });
  }

  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
  void _navigateToHome() async {
    await Future.delayed(Duration(seconds: 5), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Onboarding()));

  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(images.splashimage1 ,
          width: 400,
          height: 260,
         fit: BoxFit.fill),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                  position: slidinganimation1,
                  child:  Text("S",style: TextStyle(fontSize: 55,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
              ),
              SlideTransition(
                  position: slidinganimation2,
                  child:  Text("h",style: TextStyle(fontSize: 55,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
              ),
              SlideTransition(
                  position: slidinganimation3,
                  child:  Text("o",style: TextStyle(fontSize: 55,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
              ),
              SlideTransition(
                  position: slidinganimation4,
                  child: Text("p",style: TextStyle(fontSize: 55,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
              ),


            ],
          ),

      ],
    );
  }
}
