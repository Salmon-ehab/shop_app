import 'package:shop_app/core/assets/images.dart';
import 'package:shop_app/core/models/product_color.dart';

class Product {
  int? id;
  String? brand;
  String? name;
  String? price;
  String? priceSign;
  String? currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  double? rating;
  String? category;
  String? productType;
  List<String>? tagList;
  String? createdAt;
  String? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  List<ProductColors>? productColors;

  Product({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
    this.productColors,
  });

  factory Product.fromJson( json) {
    return Product(
      id: json['id'],
      brand: json['brand'],
      name: json['name'],
      price: json['price'],
      priceSign: json['price_sign'],
      currency: json['currency'],
      imageLink: json['image_link'] ,
      productLink: json['product_link'],
      websiteLink: json['website_link'],
      description: json['description'],
      rating: json['rating'] != null ? (json['rating'] as num).toDouble() : 4.8,
      category: json['category'],
      productType: json['product_type'],
      tagList: json['tag_list'] != null ? List<String>.from(json['tag_list']) : null,
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      productApiUrl: json['product_api_url'],
      apiFeaturedImage: json['api_featured_image'],
      productColors: json['product_colors'] != null
          ? (json['product_colors'] as List)
          .map((v) => ProductColors.fromJson(v))
          .toList()
          : null,
    );
  }
}