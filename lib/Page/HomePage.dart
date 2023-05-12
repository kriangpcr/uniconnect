import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/AppBarWidget.dart';
import '../widget/CategoriesWidget.dart';
import '../widget/DrawerWidget.dart';
import '../widget/NewestItemsWidget.dart';
import '../widget/PopularItemWidget.dart';

class homedeli extends StatelessWidget {
  const homedeli({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "What would you like to buy?",
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    const Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const CategoriesWidget(),

          //popular item
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              "Popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          //popular item widget
          const PopularItemWidget(),
          //Newest item
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              "Newest",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          //Newest item Widget
          const NewestItemsWidget(),
        ],
      ),
      floatingActionButton: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
