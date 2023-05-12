import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewestItemsWidget extends StatelessWidget {
  const NewestItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            //for(int i=0;i<10;i++)
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 150,
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
                    InkWell(
                      onTap: (){
                          Navigator.pushNamed(context, "itemPage");
                        },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/burger.png"),
                        width: 160,
                        height: 200,
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Cheese Burger!",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "อร่อย ถูก กดสั่งเลย!",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (Index) {},
                          ),
                          const Text(
                            "85 ฿",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          ),
                          Icon(CupertinoIcons.cart,color: Colors.red,
                          size: 26,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 150,
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/salad.png"),
                        width: 160,
                        height: 200,
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "โจรสลัดหาปลา",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "คลีน สด ใหม่",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (Index) {},
                          ),
                          const Text(
                            "85 ฿",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          ),
                          Icon(CupertinoIcons.cart,color: Colors.red,
                          size: 26,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 150,
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/set.png"),
                        width: 160,
                        height: 200,
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Set สุดคุ้ม!",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "ซื้อทั้งเซ็ตถูกกว่า จัดเลย!",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (Index) {},
                          ),
                          const Text(
                            "85 ฿",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          ),
                          Icon(CupertinoIcons.cart,color: Colors.red,
                          size: 26,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 150,
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/pizza.png"),
                        width: 160,
                        height: 200,
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Pizza original",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "หลายหน้า หลายรส เต็มคำ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (Index) {},
                          ),
                          const Text(
                            "85 ฿",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          ),
                          Icon(CupertinoIcons.cart,color: Colors.red,
                          size: 26,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 150,
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/barbeque.png"),
                        width: 160,
                        height: 200,
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Beef Barbeque",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "ไม่มีฟันก็เคี้ยวได้",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (Index) {},
                          ),
                          const Text(
                            "85 ฿",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          ),
                          Icon(CupertinoIcons.cart,color: Colors.red,
                          size: 26,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 150,
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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/taco.png"),
                        width: 160,
                        height: 200,
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Taco kubp",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "โปรโมชั่น 2 แถม 1",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (Index) {},
                          ),
                          const Text(
                            "85 ฿",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 26,
                          ),
                          Icon(CupertinoIcons.cart,color: Colors.red,
                          size: 26,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
