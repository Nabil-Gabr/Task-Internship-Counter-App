import 'package:build_simple_counter_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .25,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    '$_counter',
                    style: const TextStyle(fontSize: 150),
                  )),
              const Expanded(
                  child: SizedBox(
                height: 40,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                      onTap: () {
                        _incrementCounter();
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 60,
                      )),
                  CustomButton(
                      onTap: () {
                        _decrementCounter();
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 60,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
