class News {
  List<FeaturedLists>? featuredLists;
  String? count;

  News({this.featuredLists, this.count});

  News.fromJson(Map<String, dynamic> json) {
    if (json['featured_lists'] != null) {
      featuredLists = <FeaturedLists>[];
      json['featured_lists'].forEach((v) {
        featuredLists!.add(FeaturedLists.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (featuredLists != null) {
      data['featured_lists'] =
          featuredLists!.map((v) => v.toJson()).toList();
    }
    data['count'] = count;
    return data;
  }
}

class FeaturedLists {
  String? id;
  String? title;
  String? slug;
  List<Products>? products;
  String? order;
  String? createdAt;
  String? lang;
  bool? active;
  String? description;

  FeaturedLists(
      {this.id,
        this.title,
        this.slug,
        this.products,
        this.order,
        this.createdAt,
        this.lang,
        this.active,
        this.description});

  FeaturedLists.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
    order = json['order'];
    createdAt = json['created_at'];
    lang = json['lang'];
    active = json['active'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['slug'] = slug;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    data['order'] = order;
    data['created_at'] = createdAt;
    data['lang'] = lang;
    data['active'] = active;
    data['description'] = description;
    return data;
  }
}

class Products {
  String? id;
  String? name;
  String? slug;
  Category? category;
  Brand? brand;
  String? previewText;
  bool? active;
  Price? price;
  List<Prices>? prices;
  String? image;
  String? externalId;
  String? code;
  String? order;
  int? cheapestPrice;
  String? createdAt;
  String? updatedAt;
  InStock? inStock;

  Products(
      {this.id,
        this.name,
        this.slug,
        this.category,
        this.brand,
        this.previewText,
        this.active,
        this.price,
        this.prices,
        this.image,
        this.externalId,
        this.code,
        this.order,
        this.cheapestPrice,
        this.createdAt,
        this.updatedAt,
        this.inStock});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    category = json['category'] != null
        ? Category.fromJson(json['category'])
        : null;
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    previewText = json['preview_text'];
    active = json['active'];
    price = json['price'] != null ? Price.fromJson(json['price']) : null;
    if (json['prices'] != null) {
      prices = <Prices>[];
      json['prices'].forEach((v) {
        prices!.add(Prices.fromJson(v));
      });
    }
    image = json['image'];
    externalId = json['external_id'];
    code = json['code'];
    order = json['order'];
    cheapestPrice = json['cheapest_price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    inStock =
    json['inStock'] != null ? InStock.fromJson(json['inStock']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    data['preview_text'] = previewText;
    data['active'] = active;
    if (price != null) {
      data['price'] = price!.toJson();
    }
    if (prices != null) {
      data['prices'] = prices!.map((v) => v.toJson()).toList();
    }
    data['image'] = image;
    data['external_id'] = externalId;
    data['code'] = code;
    data['order'] = order;
    data['cheapest_price'] = cheapestPrice;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (inStock != null) {
      data['inStock'] = inStock!.toJson();
    }
    return data;
  }
}

class Category {
  String? id;
  String? name;
  String? slug;
  Parent? parent;
  bool? active;
  String? order;
  String? image;

  Category(
      {this.id,
        this.name,
        this.slug,
        this.parent,
        this.active,
        this.order,
        this.image});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    parent =
    json['parent'] != null ? Parent.fromJson(json['parent']) : null;
    active = json['active'];
    order = json['order'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    if (parent != null) {
      data['parent'] = parent!.toJson();
    }
    data['active'] = active;
    data['order'] = order;
    data['image'] = image;
    return data;
  }
}

class Parent {
  String? id;
  String? name;
  String? slug;
  bool? active;
  String? description;
  String? order;
  String? image;
  String? tradeInImage;
  String? createdAt;
  String? updatedAt;

  Parent(
      {this.id,
        this.name,
        this.slug,
        this.active,
        this.description,
        this.order,
        this.image,
        this.tradeInImage,
        this.createdAt,
        this.updatedAt});

  Parent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    active = json['active'];
    description = json['description'];
    order = json['order'];
    image = json['image'];
    tradeInImage = json['trade_in_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['active'] = active;
    data['description'] = description;
    data['order'] = order;
    data['image'] = image;
    data['trade_in_image'] = tradeInImage;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Brand {
  String? id;
  String? name;
  String? slug;
  bool? active;
  String? previewText;
  String? description;
  String? image;
  String? createdAt;
  String? updatedAt;

  Brand(
      {this.id,
        this.name,
        this.slug,
        this.active,
        this.previewText,
        this.description,
        this.image,
        this.createdAt,
        this.updatedAt});

  Brand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    active = json['active'];
    previewText = json['preview_text'];
    description = json['description'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['active'] = active;
    data['preview_text'] = previewText;
    data['description'] = description;
    data['image'] = image;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Price {
  int? price;
  int? oldPrice;
  int? uzsPrice;
  int? secondPrice;
  int? secondUzsPrice;

  Price(
      {this.price,
        this.oldPrice,
        this.uzsPrice,
        this.secondPrice,
        this.secondUzsPrice});

  Price.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    oldPrice = json['old_price'];
    uzsPrice = json['uzs_price'];
    secondPrice = json['second_price'];
    secondUzsPrice = json['second_uzs_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['price'] = price;
    data['old_price'] = oldPrice;
    data['uzs_price'] = uzsPrice;
    data['second_price'] = secondPrice;
    data['second_uzs_price'] = secondUzsPrice;
    return data;
  }
}

class Prices {
  String? id;
  String? type;
  int? price;
  int? oldPrice;
  int? secondPrice;

  Prices({this.id, this.type, this.price, this.oldPrice, this.secondPrice});

  Prices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    price = json['price'];
    oldPrice = json['old_price'];
    secondPrice = json['second_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['type'] = type;
    data['price'] = price;
    data['old_price'] = oldPrice;
    data['second_price'] = secondPrice;
    return data;
  }
}

class InStock {
  bool? samarkand;
  bool? tashkentCity;

  InStock({this.samarkand, this.tashkentCity});

  InStock.fromJson(Map<String, dynamic> json) {
    samarkand = json['samarkand'];
    tashkentCity = json['tashkent_city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['samarkand'] = samarkand;
    data['tashkent_city'] = tashkentCity;
    return data;
  }
}
