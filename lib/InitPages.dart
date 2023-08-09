import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'LoginPages.dart';
import 'RegisterPages.dart';

class InitPages extends StatelessWidget {
  const InitPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const Image(
              image: AssetImage('assets/images/loginBack-2.png'),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 80,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () => Get.to(const LoginPages()),
                  child: const Text('LOG IN'),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                    onPressed: () => Get.to(const RegisterPages()),
                    child: const Text('REGISTRAR'))
              ],
            ),
          )
        ])));
  }
}
