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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            buttonPadding: EdgeInsets.symmetric(horizontal: 8),
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.xl3.bold.make(),
              ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              context.theme.buttonColor)),
                      onPressed: () {},
                      child: "Add to Cart".text.make())
                  .wh(120, 40)
            ],
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(context.accentColor)
                            .bold
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make(),
                        "Stately wandering wide was tempest this fantastic flung lenore. That was louder fiend sent a. Scarcely still the not some living napping and, stillness fact me his ah radiant it so soul stronger. Enchanted is grim shore burning mortals startled."
                            .text
                            .medium
                            .textStyle(context.captionStyle)
                            .make()
                            .p16()
                      ],
                    ).py64()),
              ))
            ],
          ),
        ));
  }
}
