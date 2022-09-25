class FutureProductModel {
  late final bool active;
  late final String created_at;
  late final String description;
  late final String id;
  late final String lang;
  late final String order;
  late final ProductSlimModel products;
  late final String slug;
  late final String title;

  FutureProductModel(this.active,
      this.created_at,
      this.description,
      this.id,
      this.lang,
      this.order,
      this.products,
      this.slug,
      this.title);



  FutureProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    active = json['active'];
    description = json['description'];
    lang = json['lang'];
    created_at = json['position']['created_at'];
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'slug': slug,
    'active': active,
    'description': description,
    'lang': lang,
    'created_at': created_at,
  };


}

class ProductSlimModel {

}
