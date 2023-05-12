
import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

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
                  "160฿",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyOrderScreen()),
                // );

              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              child: const Text(
                "Order now",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
