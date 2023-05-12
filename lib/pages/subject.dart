import 'package:class001/pages/class.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';

List<String> titles = <String>[
  'File',
  'Homework',
];

class CPE121 extends StatefulWidget {
  const CPE121({super.key});

  @override
  State<CPE121> createState() => _CPE121State();
}

class _CPE121State extends State<CPE121> {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<String> uploadPdf(String filename, File file) async {
    final reference = FirebaseStorage.instance.ref().child("pdfs/$filename");

    final uploadTask = reference.putFile(file);
    await uploadTask.whenComplete(() {});

    final downloadLink = await reference.getDownloadURL();
    return downloadLink;
  }

  void pickFile() async {
    final pickedFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (pickedFile != null) {
      String filename = pickedFile.files[0].name;
      File file = File(pickedFile.files[0].path!);
      final downloadLink = await uploadPdf(filename, file);
      await _firebaseFirestore.collection("pdfs").add({
        "name": filename,
        "url": downloadLink,
      });

      print("pdf uploaded");
    }
  }

  late Future<ListResult> futureFiles;
  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseStorage.instance.ref('/CPE121').listAll();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    Future downloadFile(Reference ref) async {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/${ref.name}');

      await ref.writeToFile(file);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Download ${ref.name}')));
    }

    final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
    Future<String> uploadPdf(String filename, File file) async {
      final reference = FirebaseStorage.instance.ref().child("pdfs/$filename");

      final uploadTask = reference.putFile(file);
      await uploadTask.whenComplete(() {});

      final downloadLink = await reference.getDownloadURL();
      return downloadLink;
    }

    void pickFile() async {
      final pickedFile = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );
      if (pickedFile != null) {
        String filename = pickedFile.files[0].name;
        File file = File(pickedFile.files[0].path!);
        final downloadLink = await uploadPdf(filename, file);
        await _firebaseFirestore.collection("pdfs").add({
          "name": filename,
          "url": downloadLink,
        });

        print("pdf uploaded");
      }
    }

    List<Map<String, dynamic>> pdfData = [];

    void getAllpdf() async {
      final result = await _firebaseFirestore.collection("pdfs").get();
      pdfData = result.docs.map((e) => e.data()).toList();
      setState(() {});
    }

    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      getAllpdf();
    }

    return MaterialApp(
      title: "cpe121",
      home: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const CLASSPAGE();
                }));
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            title: const Text('CPE121'),
            notificationPredicate: (ScrollNotification notification) {
              return notification.depth == 1;
            },
            scrolledUnderElevation: 4.0,
            shadowColor: Theme.of(context).shadowColor,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: const Icon(Icons.file_copy),
                  text: titles[0],
                ),
                Tab(
                  icon: const Icon(Icons.home_work),
                  text: titles[1],
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            FutureBuilder<ListResult>(
                future: futureFiles,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final files = snapshot.data!.items;

                    return ListView.builder(
                      itemCount: files.length,
                      itemBuilder: (context, index) {
                        final file = files[index];
                        return ListTile(
                          tileColor: index.isOdd ? oddItemColor : evenItemColor,
                          title: Text(
                            file.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Week ${index + 1}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.download,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              final snackBar = SnackBar(
                                content: Text('download ${file.name}...'),
                                action: SnackBarAction(
                                  label: 'Ok',
                                  onPressed: () {},
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return const Center(
                      child: Text("data"),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  if (pdfData.isEmpty) {
                    return ListTile(
                        tileColor: index.isOdd ? oddItemColor : evenItemColor,
                        title: Text(
                          '${titles[1]} ${index + 1}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text("empty"),
                        trailing: IconButton(
                            icon: const Icon(
                              Icons.upload,
                              color: Colors.black,
                            ),
                            onPressed: pickFile));
                  } else {
                    return ListTile(
                        tileColor: index.isOdd ? oddItemColor : evenItemColor,
                        title: Text(
                          '${titles[1]} ${index + 1}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(pdfData[0]['name']),
                        trailing: IconButton(
                            icon: const Icon(
                              Icons.upload,
                              color: Colors.black,
                            ),
                            onPressed: pickFile));
                  }
                }),
          ]),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class CPE140 extends StatefulWidget {
  const CPE140({super.key});

  @override
  State<CPE140> createState() => _CPE140State();
}

class _CPE140State extends State<CPE140> {
  late Future<ListResult> futureFiles;
  @override
  void initState() {
    super.initState();
    futureFiles = FirebaseStorage.instance.ref('/CPE140').listAll();
  }

  @override
  Widget build(BuildContext context) {
    int idx = 0;
    List<String> homework = ["hw1", "hw2", "hw3"];

    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    Future downloadFile(Reference ref) async {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/${ref.name}');

      await ref.writeToFile(file);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Download ${ref.name}')));
    }

    final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

    Future<String> uploadPdf(String filename, File file) async {
      final reference =
          FirebaseStorage.instance.ref().child("${homework[idx]}/$filename");

      final uploadTask = reference.putFile(file);
      await uploadTask.whenComplete(() {});

      final downloadLink = await reference.getDownloadURL();
      return downloadLink;
    }

    void pickFile() async {
      final pickedFile = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );
      if (pickedFile != null) {
        String filename = pickedFile.files[0].name;
        File file = File(pickedFile.files[0].path!);
        final downloadLink = await uploadPdf(filename, file);
        await _firebaseFirestore.collection(homework[idx]).add({
          "name": filename,
          "url": downloadLink,
        });
      }
    }

    List<Map<String, dynamic>> pdfData = [];

    void getAllpdf() async {
      final result = await _firebaseFirestore.collection("pdfs").get();
      pdfData = result.docs.map((e) => e.data()).toList();
      setState(() {});
    }

    @override
    void initState() {
      super.initState();
      getAllpdf();
    }

    return MaterialApp(
      title: "cpe140",
      home: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const CLASSPAGE();
                }));
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            title: const Text('CPE121'),
            notificationPredicate: (ScrollNotification notification) {
              return notification.depth == 1;
            },
            scrolledUnderElevation: 4.0,
            shadowColor: Theme.of(context).shadowColor,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: const Icon(Icons.file_copy),
                  text: titles[0],
                ),
                Tab(
                  icon: const Icon(Icons.home_work),
                  text: titles[1],
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            FutureBuilder<ListResult>(
                future: futureFiles,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final files = snapshot.data!.items;

                    return ListView.builder(
                      itemCount: files.length,
                      itemBuilder: (context, index) {
                        final file = files[index];
                        return ListTile(
                          tileColor: index.isOdd ? oddItemColor : evenItemColor,
                          title: Text(
                            file.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Week ${index + 1}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.download,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              final snackBar = SnackBar(
                                content: Text('download ${file.name}...'),
                                action: SnackBarAction(
                                  label: 'Ok',
                                  onPressed: () {},
                                ),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return const Center(
                      child: Text("data"),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
            ListView.builder(
                shrinkWrap: true,
                itemCount: homework.length,
                itemBuilder: (BuildContext context, int idx) {
                  return ListTile(
                      tileColor: idx.isOdd ? oddItemColor : evenItemColor,
                      title: Text(
                        '${titles[1]} ${idx + 1}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("DeadLine xx/xx/xxxx"),
                      trailing: IconButton(
                          icon: const Icon(
                            Icons.upload,
                            color: Colors.black,
                          ),
                          onPressed: () async {
                            final pickedFile =
                                await FilePicker.platform.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: ['pdf'],
                            );
                            if (pickedFile != null) {
                              String filename = pickedFile.files[0].name;
                              File file = File(pickedFile.files[0].path!);
                              final downloadLink =
                                  await uploadPdf(filename, file);
                              await _firebaseFirestore
                                  .collection(homework[idx])
                                  .add({
                                "name": filename,
                                "url": downloadLink,
                              });
                            }
                          }));
                }),
          ]),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

// ignore: camel_case_types
