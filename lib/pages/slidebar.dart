// ignore_for_file: camel_case_types, avoid_print
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slidebar extends StatefulWidget {
  const slidebar({super.key});
  @override
  State<slidebar> createState() => _slidebarState();
}

class _slidebarState extends State<slidebar> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/p1.jpeg'},
    {"id": 2, "image_path": 'assets/images/p2.jpg'},
    {"id": 3, "image_path": 'assets/images/p3.jpg'},
    {"id": 4, "image_path": 'assets/images/p4.jpg'},
    {"id": 5, "image_path": 'assets/images/p5.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 189, 186),
      appBar: AppBar(
        title: const Text("Slide Bar"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: Stack(
            children: [
              InkWell(
                onTap: () {
                  print(currentIndex);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CarouselSlider(
                    items: imageList
                        .map((item) => Image.asset(
                              item['image_path'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ))
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      print(entry);
                      print(entry.key);
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                          width: currentIndex == entry.key ? 17 : 7,
                          height: 7,
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == entry.key
                                  ? Colors.red
                                  : Colors.teal),
                        ),
                      );
                    }).toList(),
                  )),
            ],
          ),
        )
      ]),
    );
  }
}

class slide extends StatefulWidget {
  const slide({super.key});

  @override
  State<slide> createState() => _slideState();
}

class _slideState extends State<slide> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/p1.jpeg'},
    {"id": 2, "image_path": 'assets/images/p2.jpg'},
    {"id": 3, "image_path": 'assets/images/p3.jpg'},
    {"id": 4, "image_path": 'assets/images/p4.jpg'},
    {"id": 5, "image_path": 'assets/images/p5.jpg'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              print(currentIndex);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: CarouselSlider(
                items: imageList
                    .map((item) => Image.asset(
                          item['image_path'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ))
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageList.asMap().entries.map((entry) {
                  print(entry);
                  print(entry.key);
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: currentIndex == entry.key ? 17 : 7,
                      height: 7,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? Colors.red
                              : Colors.teal),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}
