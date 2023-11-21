import 'package:flutter/material.dart';
import 'package:inventory_list/screens/shoplist_form.dart';
import 'package:provider/provider.dart';
import 'package:inventory_list/screens/list_product.dart';
import 'package:inventory_list/screens/login.dart';
import 'package:inventory_list/screens/shoplist_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

// Updated ShopItem class with color attribute
class ShopItem {
  final String name;
  final IconData icon;
  final Color color; // New color attribute

  ShopItem(this.name, this.icon, this.color); // Constructor includes color
}

// ShopCard widget to display each item as a card
class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
      color: item.color, // Use color from the item
      child: InkWell(
        onTap: () async {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("You pressed the ${item.name} button!")));

          if (item.name == "Add Item") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShopFormPage(),
              ),
            );
          }
          else if (item.name == "View Items") {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProductPage()));
          }
                    else if (item.name == "Logout") {
        final response = await request.logout(
            // TODO: Change the URL to your Django app's URL. Don't forget to add the trailing slash (/) if needed.
            "http://127.0.0.1:8000/auth/logout/");
        String message = response["message"];
        if (response['status']) {
          String uname = response["username"];
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("$message Good bye, $uname."),
          ));
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("$message"),
          ));
        }
      }
        },



        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Main widget or any other part of your application where you use the ShopCard
class YourMainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    // List of ShopItem objects with different colors
    final List<ShopItem> items = [
      ShopItem("View Items", Icons.checklist, Colors.green),
      ShopItem("Add Item", Icons.add_shopping_cart, Colors.blue),
      ShopItem("Logout", Icons.logout, Colors.red),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory List"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ShopCard(items[index]);
        },
      ),
    );
  }
}
