import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab2Screen(),
    Tab4Screen(),
    Tab1Screen(),
    Tab3Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.menu_book_outlined),
          selectedIcon: const Icon(Icons.menu_book, color: AppTheme.primaryColor),
          label: 'Cookbook',
        ),
        NavigationDestination(
          icon: const Icon(Icons.kitchen_outlined),
          selectedIcon: const Icon(Icons.kitchen, color: AppTheme.primaryColor),
          label: 'Timer',
        ),
        NavigationDestination(
          icon: const Icon(Icons.shopping_basket_outlined),
          selectedIcon: const Icon(Icons.shopping_basket, color: AppTheme.primaryColor),
          label: 'Grocery',
        ),
        NavigationDestination(
          icon: const Icon(Icons.favorite_border),
          selectedIcon: const Icon(Icons.favorite, color: AppTheme.primaryColor),
          label: 'Saved',
        ),
        ],
      ),
    );
  }
}
