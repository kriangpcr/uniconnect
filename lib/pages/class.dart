import 'package:class001/main.dart';
import 'package:flutter/material.dart';
import 'package:class001/pages/subject.dart';

class CLASSPAGE extends StatefulWidget {
  const CLASSPAGE({super.key});

  @override
  State<CLASSPAGE> createState() => _CLASSPAGEState();
}

class _CLASSPAGEState extends State<CLASSPAGE> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "downloadfile",
      home: const MyWidget(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 189, 186),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const MyApp();
            }));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("class room"),
      ),
      body: const list_sub(),
    );
  }
}

// ignore: camel_case_types
class list_sub extends StatelessWidget {
  const list_sub({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> subName = ["CPE121", "CPE140"];
    List<Widget> subList = [
      SizedBox(
        height: 15,
      )
    ];
    for (int i = 0; i < subName.length; i++) {
      // ignore: non_constant_identifier_names
      List<Widget> PAGESUB = [const CPE121(), const CPE140()];
      subList.add(GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return PAGESUB[i];
            }));
          },
          child: Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: AssetImage("assets/images/com.jpg"),
                    fit: BoxFit.cover)),
            child: Text(
              subName[i],
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          )));
      subList.add(const Divider());
    }
    return Column(
      children: subList,
    );
  }
}
