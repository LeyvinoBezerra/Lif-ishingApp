import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:fishing/LoginPages.dart';

class HomePages extends StatelessWidget {
  final List<String> postImages = [
    'assets/images/Numero1.jpeg',
    'assets/images/Numero2.jpeg',
    'assets/images/Numero3.jpeg',
    "assets/images/Numero1.jpeg",
    // Adicione mais URLs de imagens aqui
  ];

  HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lif'ishing"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fotos Recentes',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: List.generate(
                      postImages.length,
                      (index) => PostCard(imageUrl: postImages[index]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String imageUrl;

  const PostCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Legenda da Foto',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
