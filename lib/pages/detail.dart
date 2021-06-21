import 'package:flutter/material.dart';
import 'package:flutter_application/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application/widgets/themes.dart';
class DetailPage extends StatelessWidget {
  const DetailPage({Key key, this.catalog})
      : assert(catalog != null),
        super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor:MyTheme.creamColor,
        body:Column(children: [
            Hero(
               tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)),
        ],).p16()
      ),
    );
  }
}
