import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIF'ISHING"),
        centerTitle: true,
        leading: Icon(Icons.menu), // Ícone de menu, por exemplo
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Ação de notificações
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Número de colunas no grid
          mainAxisSpacing: 8.0, // Espaçamento vertical entre os itens
          crossAxisSpacing: 8.0, // Espaçamento horizontal entre os itens
        ),
        itemCount: 12, // Número de itens/fotos no grid
        itemBuilder: (BuildContext context, int index) {
          return Placeholder(); // Substitua pelo widget de foto real
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Ação para a página inicial
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Ação para a página de pesquisa
              },
            ),
            IconButton(
              icon: Icon(Icons.add_box),
              onPressed: () {
                // Ação para adicionar uma nova postagem
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Ação para mostrar curtidas/likes
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // Ação para o perfil do usuário
              },
            ),
          ],
        ),
      ),
    );
  }
}
