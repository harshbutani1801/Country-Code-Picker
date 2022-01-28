import 'package:demo/widgets/home_widgets/add_to_cart.dart';
import 'package:demo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Models/catalog.dart';
import '../widgets/themes.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$ ${catalog.price}".text.xl3.bold.red800.make(),
          AddToCart(catalog: catalog).wh(120, 50),
        ],
      ).p32(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h24(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.color(MyTheme.darkBlue).bold.make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      "Lorem dolore ut elitr nonumy rebum. Sit sed no accusam takimata sit, dolor amet tempor justo dolor elitr consetetur sanctus. Est no sea accusam et et sea. Est ea no duo vero lorem magna. Est voluptua ea lorem clita clita sadipscing nonumy eirmod sadipscing. Dolores voluptua ipsum consetetur aliquyam labore."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p32(),
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
