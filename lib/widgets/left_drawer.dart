import 'package:flutter/material.dart';
import 'package:inventory_list/screens/menu.dart';
import 'package:inventory_list/screens/shoplist_form.dart';
import 'package:inventory_list/screens/list_product.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Inventory List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Write all your shopping needs here!",
                    // Adding text style with center alignment, font size 15, white color, and regular weight
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home Page'),
            // Redirection to MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Add Item'),
            // Redirection to ShopFormPage
            onTap: () {
              // Routing to ShopFormPage here, after ShopFormPage has been created.
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context) => const ShopFormPage())
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Product List'),
            onTap: () {
              // Route menu to product page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductPage()),
        );
    },
),
        ],
      ),
    );
  }
}
