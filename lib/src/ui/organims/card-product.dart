import 'package:custom1/src/helpers/hex-color.dart';
import 'package:custom1/src/helpers/router-path.dart' as route;
import 'package:custom1/src/models/restaurant.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final RestaurantRestaurant product;
  final double opacity;
  final double scale;
  CardProduct({Key key, this.product, this.opacity = 1.0, this.scale = 1.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(scale, 1.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(route.ProductDetailRoute, arguments: product);
          },
          child: Card(
            elevation: 4,
            borderOnForeground: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: HexColor('#ffffff').withOpacity(1),
              ),
              height: 350,
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                height: 350,
                child: Hero(
                  tag: product.id,
                  child: Material(
                    color: Colors.transparent,
                    child: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Positioned(
                          top: -10,
                          left: 0,
                          height: 150,
                          width: 150,
                          child: Image.network(
                            product.thumb,
                          ),
                        ),
                        Positioned(
                          top: 140,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Text(
                            product.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          ),
                        ),
                        Positioned(
                          top: 210,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 2.4,
                            child: Text(
                              product.cuisines,
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 250,
                          left: 0,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 2.4,
                            child: Text(
                              'Número: ${product.phoneNumbers}',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
