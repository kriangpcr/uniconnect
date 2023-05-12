import 'package:flutter/material.dart';
import 'Page/CartPage.dart';
import 'Page/HomePage.dart';
import 'Page/ItemPage.dart';

class delipage extends StatelessWidget {
  const delipage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/": (context) => homedeli(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
      },
    );
  }
}

// class delipage extends StatelessWidget {
//   const delipage({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         "/": (context) => homedeli(),
//         "cartPage": (context) => CartPage(),
//         "itemPage": (context) => ItemPage(),
//       },
//     );
//   }
// }
