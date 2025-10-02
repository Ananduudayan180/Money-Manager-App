import 'package:flutter/material.dart';
import 'package:money_manager_app/Screens/category/screen_categotry.dart';
import 'package:money_manager_app/Screens/home/widgets/bottom_navigation_bar.dart';
import 'package:money_manager_app/Screens/transactions/screen_transactions.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  static ValueNotifier<int> newIndexNotifier = ValueNotifier(0);
  final pages = [const ScreenTransactions(), const ScreenCategotry()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Money Manager',
          style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          if (newIndexNotifier.value == 0) {
            print('ScreenTransactions');
          } else {
            print('ScreenCategory');
          }
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: const MoneyManagerBottomNavigation(),
      body: ValueListenableBuilder(
        valueListenable: newIndexNotifier,
        builder: (BuildContext context, int newIndex, child) {
          return pages[newIndex];
        },
      ),
    );
  }
}
