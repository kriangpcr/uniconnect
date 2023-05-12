import 'package:flutter/material.dart';

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            //for(int i=0;i<10;i++)
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "itemPage");
                        },
                        child: Container(
                          //alignment: Alignment.center,
                          child: Image.asset("assets/images/pasta.png"),
                          height: 130,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Text(
                            "Chinese pasta",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Hot Wrap",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "60 ฿",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //alignment: Alignment.center,
                        child: Image.asset("assets/images/wrap.png"),
                        height: 130,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Text(
                            "Wrap Yo!",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Hot Wrap",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "100 ฿",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //alignment: Alignment.center,
                        child: Image.asset("assets/images/krapao2.png"),
                        height: 130,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Text(
                            "กะเพราป้าแจ๋ว",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Hot Wrap",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "45 ฿",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //alignment: Alignment.center,
                        child: Image.asset("assets/images/kaopad1.png"),
                        height: 130,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Text(
                            "ข้าวผัดพาเพลิน",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Hot Wrap",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "45 ฿",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            
            //Single item
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 170,
                height: 225,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //alignment: Alignment.center,
                        child: Image.asset("assets/images/wing.png"),
                        height: 130,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Text(
                            "ไก่จ๋าไก่ทอด",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Taste Our Hot Wrap",
                        style: TextStyle(
                          fontSize: 15,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "69 ฿",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
