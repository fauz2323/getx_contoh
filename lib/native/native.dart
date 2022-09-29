import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Native extends StatefulWidget {
  const Native({super.key});

  @override
  State<Native> createState() => _NativeState();
}

class _NativeState extends State<Native> {
  int number = 0;

  increment() {
    //native flutter harus setstate dlu baru bisa refresh ui
    setState(() {
      number++;
    });
  }

  decrement() {
    setState(() {
      number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Native")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => decrement(),
                  child: Text("-"),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () => increment(),
                  child: Text("+"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
