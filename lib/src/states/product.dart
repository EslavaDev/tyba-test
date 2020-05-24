
import 'package:custom1/src/repositories/product.dart';
import 'package:flutter/material.dart';
import 'package:custom1/src/models/product.dart';

class ProductProvider with ChangeNotifier{
  final ProductRepository _repository = ProductRepository();
  List<Product> _productList;
  bool _loading = true;

  List<Product> get productList => _productList;
  bool get loading => _loading;


  void getProduct() async {
    _loading = true;
    notifyListeners();
    _productList = await _repository.getProducts();
    _loading = false; 
    notifyListeners();
  }

}