
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application/models/cart.dart';
import 'package:flutter_application/models/catalog.dart';



class Addtocart extends StatefulWidget {
  final Item catalog;
  const Addtocart({
    Key key,
    @required this.catalog,
  }) : super(key: key);

  @override
  _AddtocartState createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  
  final _cart = CartModel();
  final _catalog = CatalogModel();
  
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog)??false;
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor)),
        onPressed: () {
          if(!isInCart){

          isInCart = isInCart.toggle();
          _cart.catalog = _catalog;
          _cart.add(widget.catalog);
          setState(() {});
          }
        },
        child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus)
    );
  }
}
