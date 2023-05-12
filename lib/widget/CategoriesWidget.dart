import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            //for(int i =0 ; i<10 ;i++)
            //Single item
            //drink
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3))
                    ]),
                child: Image.network(
                  "https://w7.pngwing.com/pngs/467/70/png-transparent-sliced-watermelon-fruit-mudslide-watermelon-graphy-fruit-watermelon-food-melon-fruit-nut.png",
                  width: 50,
                  height: 50,
                ),
              ),
            ),

            //Single item
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3))
                    ]),
                child: Image.network(
                  "https://www.pngall.com/wp-content/uploads/7/Dessert-PNG-Pic.png",
                  width: 50,
                  height: 50,
                ),
              ),
            ), //Single item
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3))
                    ]),
                child: Image.network(
                  "https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbGlmZW9mcGl4MDAwMDEtaW1hZ2VfMS1renhsdXhhei5qcGc.jpg?s=gayymr-MoZkhATCpk4H6JF11q8zWqNV8pVstYoefMiE",
                  width: 50,
                  height: 50,
                ),
              ),
            ), //Single item
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3))
                    ]),
                child: Image.network(
                  "https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcGYtczk5LW1uLXN3ZWV0LXBvdGF0by1mYWxhZmVsLWJvd2wtNy5wbmc.png?s=Kn6iMY8Xvsajbu2Yxz_R6r6IjS4tzeuB-DbkvYNB1Yg",
                  width: 50,
                  height: 50,
                ),
              ),
            ), //Single item
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3))
                    ]),
                child: Image.network(
                  "https://img1.picmix.com/output/stamp/normal/2/7/5/4/1674572_935f9.png",
                  width: 50,
                  height: 50,
                ),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
