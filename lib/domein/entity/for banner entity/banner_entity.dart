// To parse this JSON data, do
//
//     final bannerProducts = bannerProductsFromJson(jsonString);

import 'dart:convert';

BannerProducts bannerProductsFromJson(String str) =>
    BannerProducts.fromJson(json.decode(str));

String bannerProductsToJson(BannerProducts data) => json.encode(data.toJson());

class BannerProducts {
  BannerProducts({
    required this.id,
    required this.title,
    required this.slug,
    required this.active,
    required this.image,
    required this.url,
    required this.description,
    required this.lang,
    required this.price,
    required this.position,
    required this.buttonTitle,
    required this.type,
    required this.orderNumber,
  });

  late final String id;
  late final String title;
  late String slug;
  late bool active;
  late String image;
  late String url;
  late String description;
  late String lang;
  late int price;
  late String buttonTitle;
  late Position position;
  late String type;
  late int orderNumber;

  factory BannerProducts.fromJson(Map<String, dynamic> json) => BannerProducts(
        id: json["id"] ?? "",
        title: json["title"] ?? "",
        slug: json["slug"] ?? "",
        active: json["active"] ?? false,
        image: json["image"] ?? "",
        url: json["url"] ?? "",
        description: json["description"] ?? "",
        lang: json["lang"] ?? "",
        price: json["price"] ?? 0,
        buttonTitle: json["button_title"] ?? "",
        position: Position.fromJson(json["position"] ?? {}),
        type: json["type"] ?? "",
        orderNumber: json["order_number"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "slug": slug,
        "active": active,
        "image": image,
        "url": url,
        "description": description,
        "lang": lang,
        "price": price,
        "button_title": buttonTitle,
        "position": position.toJson(),
        "type": type,
        "order_number": orderNumber,
      };
}

class Position {
  Position({
    this.id,
    this.title,
    this.slug,
    this.active,
    this.size,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  String? id;
  String? title;
  String? slug;
  bool? active;
  String? size;
  String? description;
  String? createdAt;
  String? updatedAt;

  factory Position.fromJson(Map<String, dynamic> json) => Position(
        id: json["id"],
        title: json["title"],
        slug: json["slug"],
        active: json["active"],
        size: json["size"],
        description: json["description"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "slug": slug,
        "active": active,
        "size": size,
        "description": description,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
