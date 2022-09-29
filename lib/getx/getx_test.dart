import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxTest extends StatelessWidget {
  GetxTest({super.key});

  var number = 0.obs;

  increment() {
    //sudah dihandle sama getx
    number.value++;
  }

  decrement() {
    number.value--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // tapi harus butuh obx buat sesuatu yg harus dilisten dan menyertakan .value
            Obx(
              () => Text(
                number.value.toString(),
              ),
            ),
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
