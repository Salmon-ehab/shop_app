class ProductColors {
  String? hexValue;
  String? colourName;

  ProductColors({this.hexValue, this.colourName});

  factory ProductColors.fromJson(Map<String, dynamic> json) {
    return ProductColors(
      hexValue: json['hex_value'],
      colourName: json['colour_name'],
    );
  }
}