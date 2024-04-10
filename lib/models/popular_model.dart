import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  int? totalSize;
  int? typeId;
  int? offset;
  List<Products>? products;
  Product({
    this.totalSize,
    this.typeId,
    this.offset,
    this.products,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalSize': totalSize,
      'typeId': typeId,
      'offset': offset,
      'products': products!.map((x) => x.toMap()).toList(),
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      totalSize: map['totalSize'] != null ? map['totalSize'] as int : null,
      typeId: map['typeId'] != null ? map['typeId'] as int : null,
      offset: map['offset'] != null ? map['offset'] as int : null,
      products: map['products'] != null
          ? List<Products>.from(
              (map['products'] as List<int>).map<Products?>(
                (x) => Products.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Products {
  int? id;
  String? name;
  String? description;
  int? price;
  int? start;
  String? img;
  String? location;
  String? createAt;
  String? updatedAt;
  int? typeId;
  Products({
    this.id,
    this.name,
    this.description,
    this.price,
    this.start,
    this.img,
    this.location,
    this.createAt,
    this.updatedAt,
    this.typeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'start': start,
      'img': img,
      'location': location,
      'createAt': createAt,
      'updatedAt': updatedAt,
      'typeId': typeId,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      price: map['price'] != null ? map['price'] as int : null,
      start: map['start'] != null ? map['start'] as int : null,
      img: map['img'] != null ? map['img'] as String : null,
      location: map['location'] != null ? map['location'] as String : null,
      createAt: map['createAt'] != null ? map['createAt'] as String : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as String : null,
      typeId: map['typeId'] != null ? map['typeId'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) =>
      Products.fromMap(json.decode(source) as Map<String, dynamic>);
}
