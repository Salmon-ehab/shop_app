import 'package:shop_app/core/assets/images.dart';

class onboardingcontent{
  final String logo;
  final String describtion;

  onboardingcontent({required this.logo, required this.describtion});


}

List<onboardingcontent>  content =[
  onboardingcontent(logo:images.onboardinglogo1,describtion: "Welcome To Shop App"),
  onboardingcontent(logo:images.onboardinglogo2,describtion: "Enjoy the best products and offers"),
  onboardingcontent(logo:images.onboardinglogo3,describtion: "Track Your Orders Every Step Of The Way"),

];