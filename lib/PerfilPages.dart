import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PerfilPages extends StatelessWidget {
  const PerfilPages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/PerfilHome.jpeg'),
            ),
            SizedBox(height: 16),
            Text(
              'Renato Lorezzo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Usuário @Renato Lorezzo',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Text(
              'Bio: Amo pescar nos meus momentos Livres.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8),
                Text('Icapuí, Brasil'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.work),
                SizedBox(width: 8),
                Text('Professor'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text('lorenzo@gmail.com'),
              ],
            ),
            SizedBox(height: 16),
            Image(
              image: AssetImage('assets/images/Numero1.jpeg'),
            ),
            SizedBox(height: 16),
            Image(
              image: AssetImage('assets/images/Numero2.jpeg'),
            ),
            SizedBox(height: 16),
            Image(
              image: AssetImage('assets/images/Numero3.jpeg'),
            ),
            SizedBox(height: 16),
            Image(
              image: AssetImage('assets/images/Numero4.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}
