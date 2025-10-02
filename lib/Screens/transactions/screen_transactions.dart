import 'package:flutter/material.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(10),
      itemBuilder: (ctx, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 38,
              child: Text(
                'Sep\n10',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            title: Text('Income'),
            subtitle: Text('RS 10000'),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return SizedBox(height: 10);
      },
      itemCount: 30,
    );
  }
}
