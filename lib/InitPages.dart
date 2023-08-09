import 'package:flutter/material.dart';

class InitPages extends StatelessWidget {
  const InitPages({super.key});
  
  

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
         Center(child: Rows( mainAxisSize: MainAxisSize.min,
        children: <Widget>[[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('LOG IN'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('REGISTRAR')],))
           ),
        ]),
      ),
    );
  }
}
