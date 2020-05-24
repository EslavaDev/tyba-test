import 'package:custom1/src/helpers/hex-color.dart';
import 'package:custom1/src/models/restaurant.dart';
import 'package:custom1/src/ui/molecules/app-bar.dart';
import 'package:custom1/src/ui/template/layout.dart';
import 'package:flutter/material.dart';

class RestaurantDetail extends StatelessWidget {
  final RestaurantRestaurant restaurant;
  const RestaurantDetail({Key key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.red,
      appBar: AppBarCustom(title: restaurant.name),
      body: LayoutCustom(
        safeArea: false,
        backgrounColor: HexColor('#DBDDDC'),
        type: 3,
        // appBar: true,
        child: [
          Positioned(
            left: 0,
            top: 150,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.1,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      child: Hero(
                        tag: restaurant.id,
                        child: Material(
                          color: Colors.transparent,
                          child: Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                left: 50,
                                child: Container(
                                  width: 300,
                                  height: 340,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      restaurant.thumb,
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 10,
                    left: 25,
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        '${restaurant.name}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 25,
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        '${restaurant.cuisines}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: (140),
                    left: 25,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      child: Text(
                        'Dirección: ${restaurant.location.address} \n\nCiudad: ${restaurant.location.city} \nZipCode:${restaurant.location.zipcode} \nTelefono:${restaurant.phoneNumbers}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Positioned(
                    top: (130),
                    right: 25,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      child: Text(
                        'Rating: ${restaurant.userRating.aggregateRating} \n\n Votos: ${restaurant.userRating.votes} \n\nRatingText: ${restaurant.userRating.ratingText}  ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 25,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      child: Text(
                        'Horario: ${restaurant.timings}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    right: 25,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      child: Text(
                        'Highlights: ${restaurant.highlights}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
