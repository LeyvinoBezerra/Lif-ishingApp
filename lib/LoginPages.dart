import 'package:fishing/HomePages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'PerfilPages.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(232, 252, 253, 253),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 220,
                      child: Image(
                        image: AssetImage('assets/images/logorecortada.png'),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Positioned(
                      height: 220,
                      bottom: 100,
                      left: 200,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => Get.to(const HomePages()),
                            child: const Text('LOG IN'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
