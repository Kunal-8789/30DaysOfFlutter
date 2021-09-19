
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../Theme.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  // ignore: unnecessary_null_comparison
  })  : assert(image != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyTheme.creameColor).make().p16().w40(context);
  }
}