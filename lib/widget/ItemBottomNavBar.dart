import 'package:class001/Page/CartPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "85฿",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              icon: Icon(CupertinoIcons.cart),
              label: const Text(
                "Add to cart",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
