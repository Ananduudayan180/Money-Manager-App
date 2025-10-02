import 'package:flutter/material.dart';
import 'package:money_manager_app/Screens/home/screen_home.dart';

class MoneyManagerBottomNavigation extends StatelessWidget {
  const MoneyManagerBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.newIndexNotifier,
      builder: (BuildContext context, int newIndex, child) {
        return BottomNavigationBar(
          selectedItemColor: Colors.purple,

          currentIndex: newIndex,
          onTap: (index) {
            ScreenHome.newIndexNotifier.value = index;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Transactions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
          ],
        );
      },
    );
  }
}
