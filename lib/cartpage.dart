import 'package:flutter/material.dart';
// cart page


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  // List to hold cart items
  List<CartItem> cartItems = [
    CartItem(name: "Item 1", price: 30.0, quantity: 1),
    CartItem(name: "Item 2", price: 50.0, quantity: 2),
    CartItem(name: "Item 3", price: 20.0, quantity: 1),
  ];

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController and animation
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    // Define a fade-in animation
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));

    // Start the animation after a slight delay
    Future.delayed(Duration(milliseconds: 500), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.orange[900],
      ),
      body: SingleChildScrollView(  // Wrap the entire body in a SingleChildScrollView
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.orange.shade900,
                    Colors.orange.shade800,
                    Colors.orange.shade400
                  ]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeTransition(
                      opacity: _fadeAnimation,
                      child: Text("Your Cart", style: TextStyle(color: Colors.white, fontSize: 40)),
                    ),
                    SizedBox(height: 10),
                    FadeTransition(
                      opacity: _fadeAnimation,
                      child: Text("Review and manage your items", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: Column(
                          children: cartItems.map((item) {
                            return CartItemWidget(
                              item: item,
                              onUpdateQuantity: (newQuantity) {
                                setState(() {
                                  item.quantity = newQuantity;
                                });
                              },
                              onDelete: () {
                                setState(() {
                                  cartItems.remove(item);
                                });
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(height: 40),
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: MaterialButton(
                          onPressed: () {
                            // Handle Checkout
                          },
                          height: 50,
                          color: Colors.orange[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text("Checkout", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      FadeTransition(
                        opacity: _fadeAnimation,
                        child: Text("Continue shopping", style: TextStyle(color: Colors.grey)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Cart Item Model
class CartItem {
  String name;
  double price;
  int quantity;

  CartItem({required this.name, required this.price, required this.quantity});

  double get totalPrice => price * quantity;
}

// Cart Item Widget
class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final Function(int) onUpdateQuantity;
  final Function onDelete;

  CartItemWidget({
    required this.item,
    required this.onUpdateQuantity,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: AlwaysStoppedAnimation(1.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Icon(Icons.shopping_cart, color: Colors.orange),
          title: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("Price: \$${item.price} | Total: \$${item.totalPrice}"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.remove, color: Colors.orange),
                onPressed: () {
                  if (item.quantity > 1) {
                    onUpdateQuantity(item.quantity - 1);
                  }
                },
              ),
              Text("${item.quantity}", style: TextStyle(fontWeight: FontWeight.bold)),
              IconButton(
                icon: Icon(Icons.add, color: Colors.orange),
                onPressed: () {
                  onUpdateQuantity(item.quantity + 1);
                },
              ),
              IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  onDelete();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
