// ignore_for_file: camel_case_types

import 'package:class001/Page/HomePage.dart';
import 'package:class001/Page/ItemPage.dart';
import 'package:class001/delipage.dart';
import 'package:class001/pages/class.dart';
import 'package:class001/pages/main_page.dart';
import 'package:class001/pages/slidebar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my home",
      home: const MainPage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 230, 189, 186),
        appBar:
            AppBar(automaticallyImplyLeading: false, title: Text(user!.email!)),
        body: const HOMEPAGE());
  }
}

class HOMEPAGE extends StatelessWidget {
  const HOMEPAGE({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [slide(), mainswu()],
      ),
    );
  }
}

class class_bot extends StatelessWidget {
  const class_bot({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const CLASSPAGE();
            }));
          },
          child: const Text("classroom")),
    );
  }
}

class deli_bot extends StatelessWidget {
  const deli_bot({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 100,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const delipage();
            }));
          },
          child: const Text("deli")),
    );
  }
}

class logout_bot extends StatelessWidget {
  const logout_bot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        FirebaseAuth.instance.signOut();
      },
      color: Colors.blue,
      child: const Text("Logout"),
    );
  }
}

class mainswu extends StatelessWidget {
  const mainswu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(30))),
            child: Container(
              color: const Color.fromARGB(255, 226, 100, 91),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Stack(
                  children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: const logout_bot()),
                    Container(
                        alignment: Alignment.topCenter,
                        child: const class_bot()),
                    Container(
                        alignment: Alignment.topRight, child: const deli_bot()),
                    Container(
                        alignment: Alignment.topLeft, child: const class_bot()),
                    Container(
                        alignment: const Alignment(-1, -0.62),
                        child: const class_bot()),
                    Container(
                        alignment: const Alignment(0, -0.62),
                        child: const class_bot()),
                    Container(
                        alignment: const Alignment(1, -0.62),
                        child: const class_bot()),
                    Container(
                      alignment: const Alignment(0, 0.2),
                      child: Container(
                        height: 150,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          color: Colors.amber,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}




// Container(
//                 width: double.infinity,
//                 color: const Color.fromARGB(255, 226, 100, 91),
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [
//                           BOTTOM(),
//                           BOTTOM(),
//                           BOTTOM(),
//                         ],
//                       ),
//                       Container(
//                         clipBehavior: Clip.hardEdge,
//                         height: 100,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(30)),
//                         child: Container(
//                             color: const Color.fromARGB(255, 248, 59, 59)),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [BOTTOM4()],
//                       ),
//                     ],
//                   ),
//                 ))