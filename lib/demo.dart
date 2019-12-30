import 'package:flutter/material.dart';

class Product {
  final String name;

  Product({this.name});
}

typedef CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
     :product = product,
        super(key: new ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context){
    return inCart? Colors.black54:Theme.of(context).primaryColor;
  }
  TextStyle _getTextStyle(BuildContext context){
    if(!inCart) return null;
    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: (){
        onCartChanged(product,!inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0],style:TextStyle(color: Colors.white)),
      ),
      title: new Text(product.name,style:_getTextStyle(context)),
    );
  }
}

class ShoppingList extends StatefulWidget {
  final List<Product> products;

  ShoppingList({Key key, this.products}) :super(key: key);

  @override
  _ShoppingListState createState() => _ShoppingListState();

}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = Set<Product>();

  @override
  void didUpdateWidget(ShoppingList oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _handleCartChangee(Product product, bool inCart) {
    setState(() {
      if (inCart) {
        _shoppingCart.add(product);
      } else {
        _shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text('Shopping List')
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product){
          return new ShoppingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChangee,
          );
        }).toList(),
      ),
    );
  }
}

