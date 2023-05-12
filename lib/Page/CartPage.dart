
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/AppBarWidget.dart';
import '../widget/CartBottomNavBar.dart';
import '../widget/DrawerWidget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarWidget(),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
                    child: Text(
                      "Order List",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/toekbokki.png",
                              width: 150,
                              height: 80,
                            ),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "Toekbokki",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "เข้มข้น ไปถึงปูซาน",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "65 ฿",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    CupertinoIcons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/wings.png",
                              width: 150,
                              height: 80,
                            ),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "FriedWings",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "อร่อยนัวคั่วเอง",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "45 ฿",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    CupertinoIcons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/images/brownie.png",
                              width: 150,
                              height: 80,
                            ),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "Choc Brownie",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "หวานแทบละลาย",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "40 ฿",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    CupertinoIcons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                      
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Items:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "4",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Sub-total:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "150฿",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Delivery:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "10฿",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Total:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "160฿",
                                  style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
