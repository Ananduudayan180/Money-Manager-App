import 'package:flutter/material.dart';

class IncomeList extends StatelessWidget {
  const IncomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemBuilder: (ctx, index) {
        return ListTile(
          title: Text('Income $index'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete, color: Colors.red),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return Divider();
      },
      itemCount: 30,
    );
  }
}
