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
        backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            buttonPadding: EdgeInsets.symmetric(horizontal: 8),
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.xl3.bold.make(),
              ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              MyTheme.darkBluishColor)),
                      onPressed: () {},
                      child: "Add to Cart".text.make())
                  .wh(100, 50)
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
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(MyTheme.darkBluishColor)
                            .bold
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make(),
                        "Stately wandering wide was tempest this fantastic flung lenore. That was louder fiend sent a. Scarcely still the not some living napping and, stillness fact me his ah radiant it so soul stronger. Enchanted is grim shore burning mortals startled."
                            .text
                            .lg
                            .textStyle(context.captionStyle)
                            .make()
                            .p32()
                      ],
                    ).py64()),
              ))
            ],
          ),
        ));
  }
}
