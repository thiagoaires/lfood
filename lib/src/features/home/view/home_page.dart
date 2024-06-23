import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home Page'),
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
      bottomNavigationBar: PepperoniBottomBar(
        onIndexSelected: print,
        items: [
          PepperoniBottomBarItem(icon: Icons.home, label: 'Inicio'),
          PepperoniBottomBarItem(icon: Icons.search, label: 'Busca'),
          PepperoniBottomBarItem(icon: Icons.shop_2, label: 'Pedidos'),
          PepperoniBottomBarItem(icon: Icons.person, label: 'Perfil'),
        ],
      ),
    );
  }
}
