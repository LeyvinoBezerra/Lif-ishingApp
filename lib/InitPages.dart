import 'package:flutter/material.dart';

class Pageinit extends StatelessWidget {
  const Pageinit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: AssetImage('assets/images/loginBack-2.png'),
            ),
          ),
        ]),
      ),
    );
  }
}
