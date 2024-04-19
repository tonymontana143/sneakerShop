import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assignment_3/components/button.dart';
import 'package:assignment_3/models/shoes.dart';
import 'package:assignment_3/theme/colors.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  void removeFromCart(Sneakerss food, BuildContext context) {
    final shop = context.read<Shop>();
    //remove from cart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text('My Cart'),
          elevation: 0,
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    final Sneakerss sneaker = value.cart[index];
                    final String sneakerName = sneaker.name;

                    final String sneakerPrice = sneaker.price;
                    //return list tile
                    return Container(
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(8)),
                      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: ListTile(
                        title: Text(
                          sneakerName,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "$sneakerPrice\$",
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.grey[300],
                          ),
                          onPressed: () => removeFromCart(sneaker, context),
                        ),
                      ),
                    );
                  }),
            ),
            //Pay button
           Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Total: \$${value.cart.fold<double>(0, (sum, item) => sum + double.parse(item.price))}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Pay button
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(
                text: "Pay Now",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
