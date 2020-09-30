import 'package:flutter/material.dart';
import 'package:flutter_examples/util/method.dart';

class ListExampleScreen extends StatelessWidget {
  final List<String> listItems = [
    "Android",
    "Flutter",
    "iOS",
    "PHP",
    "Kotlin",
    "Dart"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: ListView(
          children: listItems
              .map((item) => InkWell(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(item),
                      ),
                    ),
                    onTap: () => navigate(context, DetailScreen(item)),
                  ))
              .toList()),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String title;

  DetailScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
    );
  }
}
