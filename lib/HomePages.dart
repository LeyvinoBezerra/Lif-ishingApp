import 'package:flutter/material.dart';

import 'PerfilPages.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    PerfilPages()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getbody() {
    return _widgetOptions[_selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text("LIF'ISHING"),
        centerTitle: true,
        leading: const Icon(Icons.menu), // Ícone de menu, por exemplo
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Ação de notificações
            },
          ),
        ],
      ),
      body: getbody(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                _onItemTapped(0);
                // Ação para a página inicial
              },
            ),
            // IconButton(
            //   icon: const Icon(Icons.search),
            //   onPressed: () {

            //     // Ação para a página de pesquisa
            //   },
            // ),
            // IconButton(
            //   icon: const Icon(Icons.add_box),
            //   onPressed: () {
            //     // Ação para adicionar uma nova postagem
            //   },
            // ),
            // IconButton(
            //   icon: const Icon(Icons.favorite),
            //   onPressed: () {
            //     // Ação para mostrar curtidas/likes
            //   },
            // ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                _onItemTapped(1);
                // Ação para o perfil do usuário
              },
            ),
          ],
        ),
      ),
    );
  }
}
