import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Models/cart.dart';
import '../widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.bold.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$ ${_cart.totalPrice}".text.xl4.color(MyTheme.darkBlue).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: "Buying Not Supported Yet.....".text.make(),
                ),
              );
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyTheme.darkBlue)),
            child: "Buy".text.white.make(),
          ).wh(100, 50),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key key}) : super(key: key);

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Nothing To Show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                onPressed: () {
                  _cart.remove(_cart.items[index]);
                  setState(() {});
                },
                icon: const Icon(Icons.remove_circle_outline_rounded),
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
