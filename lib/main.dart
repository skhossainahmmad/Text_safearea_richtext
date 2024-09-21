import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Text_SafeArea_RichText",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text_SafeArea_RichText"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[300],
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: "Learning"),
                  TextSpan(
                    text: "approach",
                    style: TextStyle(fontSize: 35, color: Colors.deepOrange),
                  ),
                ]),
              ),
              Text(
                "Learning approch",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
