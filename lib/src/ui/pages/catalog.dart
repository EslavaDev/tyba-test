import 'package:custom1/src/states/city.dart';
import 'package:custom1/src/states/product.dart';
import 'package:custom1/src/states/restaurant.dart';
import 'package:custom1/src/ui/molecules/search.dart';
import 'package:custom1/src/ui/organims/card-discount.dart';
import 'package:custom1/src/ui/organims/card-product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key key}) : super(key: key);

  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  final scrollController = ScrollController();

  void onListen() {
    setState(() {});
  }

  @override
  void initState() {
    scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Search(),
        Expanded(
          flex: 1,
          child: Consumer<RestaurantProvider>(
            builder: (_, snapshot, __) {
              if (snapshot.loading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  SliverStaggeredGrid.countBuilder(
                    crossAxisCount: 2,
                    staggeredTileBuilder: (_) => StaggeredTile.fit(1),
                    itemCount: snapshot.restaurants.length,
                    itemBuilder: (context, index) {
                    
                      return CardProduct(product: snapshot.restaurants[index].restaurant);
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
