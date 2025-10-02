import 'package:flutter/material.dart';
import 'package:money_manager_app/Screens/category/list/expense_list.dart';
import 'package:money_manager_app/Screens/category/list/income_list.dart';

class ScreenCategotry extends StatelessWidget {
  const ScreenCategotry({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: 'Income'),
              Tab(text: 'Expense'),
            ],
          ),
          Expanded(child: TabBarView(children: [IncomeList(), ExpenseList()])),
        ],
      ),
    );
  }
}
