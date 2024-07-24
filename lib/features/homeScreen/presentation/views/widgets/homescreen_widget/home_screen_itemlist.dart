import 'package:shop_app/core/assets/images.dart';

class itemsType{
  final String name;
  final String image;

  itemsType({required this.name, required this.image});

}

List<itemsType>  Items=[

  itemsType(name: "Blush", image: images.blushimage),
  itemsType(name: "Bronzer", image: images.bronzerimage),
  itemsType(name: "Eye Brow", image: images.eyebrowimage),
  itemsType(name: "Eye Liner", image: images.eyelinerimage),
  itemsType(name: "Eye Shadow", image: images.eyeshadowimage),
  itemsType(name: "Foundation", image: images.foundationimage),
  itemsType(name: "Lip Liner", image: images.liplinerimage),
  itemsType(name: "Lip Stick", image: images.lipstickimage),
  itemsType(name: "Mascara", image: images.mascaraimage),
  itemsType(name: "Nail Polish", image: images.nailpolishimage),


];