import 'package:custom1/src/models/product.dart';

abstract class ProductBase {
  Future<List<Product>> getProducts();
}

class ProductRepository with ProductBase {
  @override
  Future<List<Product>> getProducts() async {
    var response = await Future.delayed(Duration(milliseconds: 1350),(){
      var list = [
         Product.fromJson({
          'id': 1,
          'unit': 'Kg',
          'image': 'http://pngimg.com/uploads/avocado/avocado_PNG15515.png',
          'color': '#919840',
          'name': 'Aguacate',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'soy una descripcion',
          'start': 3
        }),
        Product.fromJson({
          'id': 2,
          'unit': 'Kg',
          'image': 'http://pngimg.com/uploads/kiwi/kiwi_PNG4036.png',
          'color': '#8E650D',
          'name': 'Kiwi',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'soy una descripcion',
          'start': 3
        }),
        Product.fromJson({
          'id': 3,
          'unit': 'Kg',
          'image': 'http://pngimg.com/uploads/banana/banana_PNG817.png',
          'color': '#FFCF2E',
          'name': 'Banano',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'lorem lotem lorem lorem lore lorem lorem lorem loren loren lorem lorem',
          'start': 3
        }),
        Product.fromJson({
          'id': 4,
          'unit': 'Kg',
          'image': 'http://pngimg.com/uploads/mango/mango_PNG9185.png',
          'color': '#EC8712',
          'name': 'Mango',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'soy una descripcion',
          'start': 3
        }),
        Product.fromJson({
          'id': 5,
          'unit': 'Kg',
          'image': 'http://pngimg.com/uploads/avocado/avocado_PNG15515.png',
          'color': '#919840',
          'name': 'Aguacate',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'soy una descripcion',
          'start': 3
        }),
        Product.fromJson({
          'id': 6,
          'unit': 'Kg',
          'image': 'http://pngimg.com/uploads/kiwi/kiwi_PNG4036.png',
          'color': '#8E650D',
          'name': 'Kiwi',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'soy una descripcion',
          'start': 3
        }),
        Product.fromJson({
          'id': 7,
          'unit': 'Kg',
          'image': 'http://pngimg.com/uploads/banana/banana_PNG817.png',
          'color': '#FFCF2E',
          'name': 'Banano',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'soy una descripcion',
          'start': 3
        }),
        Product.fromJson({
          'id': 8,
          'unit': 'Kg',
          'image': 'http://pngimg.com/uploads/mango/mango_PNG9185.png',
          'color': '#EC8712',
          'name': 'Mango',
          'stepUnit': 0.5,
          'price': 10.00,
          'description': 'soy una descripcion',
          'start': 3
        })
      ];
    return productListToJson(list);

   });
    return productListFromJson(response);
  }
}
