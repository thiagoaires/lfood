import 'package:flutter/material.dart';
import 'package:lfood_app/src/features/home/view/pages/home_page.dart';
import 'package:lfood_app/src/features/orders/view/pages/orders_page.dart';
import 'package:lfood_app/src/features/profile/view/pages/profile_page.dart';
import 'package:lfood_app/src/features/search/view/pages/search_page.dart';
import 'package:pepperoni/pepperoni.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          SearchPage(),
          OrdersPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: PepperoniBottomBar(
        onIndexSelected: pageController.jumpToPage,
        items: [
          PepperoniBottomBarItem(
              icon: Icons.home_outlined,
              activeIcon: Icons.home_filled,
              label: 'Inicio'),
          PepperoniBottomBarItem(
            icon: Icons.search_outlined,
            activeIcon: Icons.search_sharp,
            label: 'Busca',
          ),
          PepperoniBottomBarItem(
            icon: Icons.file_copy_outlined,
            activeIcon: Icons.file_copy,
            label: 'Pedidos',
            countBadge: 5,
          ),
          PepperoniBottomBarItem(
            icon: Icons.person_outline,
            activeIcon: Icons.person,
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
