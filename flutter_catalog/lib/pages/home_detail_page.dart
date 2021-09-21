// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.theme.canvasColor,
       
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: context.theme.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(context.theme.accentColor)
                            .bold
                            .make(),
                        Opacity(
                          opacity: 0.5,
                          child: catalog.desc.text.xl.make(),
                        ),
                        10.heightBox,
                      ],
                    ).py64(),
                  ),
                ),
              )
            ],
          ),
        ),
         bottomNavigationBar: Container(
          color: context.theme.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.red800.xl4.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      context.theme.buttonColor,
                    ),
                    shape: MaterialStateProperty.all(StadiumBorder())),
                child: "Add to cart".text.make(),
              ).wh(120, 50),
            ],
          ).p32(),
        ),);
  }
}
