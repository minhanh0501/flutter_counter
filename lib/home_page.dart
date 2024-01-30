import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class MyObject {
  int value;

  MyObject(this.value);
  // Tang gia tri len 1 don vi
  void increase() {
    value++;
  }

  // Giam gia tri xuong 1 don vi
  void decrease() {
    value--;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _value = 0;
  MyObject _myObject = MyObject(0);
  String? title;
  Widget _buildText() {
    return Text(
      'Value: ${_myObject.value}  ',
      style: const TextStyle(fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.person),
          title: Text(title ?? 'Debugging App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildText(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        _myObject.increase();
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        _myObject.decrease();
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
