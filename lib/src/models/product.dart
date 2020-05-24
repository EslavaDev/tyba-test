// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);
//     final productList = productListFromJson(jsonString);

import 'dart:convert';


Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

List<Product> productListFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productListToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    int id;
    String image;
    String color;
    String name;
    double stepUnit;
    double price;
    String unit;
    String description;
    int start;

    Product({
        this.id,
        this.image,
        this.color,
        this.name,
        this.stepUnit,
        this.price,
        this.description,
        this.start,
        this.unit
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        image: json['image'],
        color: json['color'],
        name: json['name'],
        stepUnit: json['stepUnit'].toDouble(),
        price: json['price'].toDouble(),
        description: json['description'],
        unit: json['unit'],
        start: json['start'],
    );

    Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'color': color,
        'name': name,
        'stepUnit': stepUnit,
        'price': price,
        'description': description,
        'unit': unit,
        'start': start,
    };
}