import 'package:flutter/material.dart';
import 'package:sort/sort.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final textEditingController = TextEditingController();

  var list = <double>[9.3, 12.4, 2, 3, 6, 7];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$list',
                style: TextStyle(
                  fontSize: 21,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        list.simpleSort();
                      });
                    },
                    child: Text('Simple Sort'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        list.quickSort();
                      });
                    },
                    child: Text('Quick Sort'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: textEditingController,
                        decoration: InputDecoration(hintText: 'Enter a number'),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          list.addAndSort(
                              item: double.parse(textEditingController.text));
                        });
                      },
                      child: Text('Add and Sort'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
