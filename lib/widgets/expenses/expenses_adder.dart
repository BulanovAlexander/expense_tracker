import 'package:flutter/material.dart';

class ExpensesAdder extends StatefulWidget {
  const ExpensesAdder({super.key});

  @override
  State<ExpensesAdder> createState() {
    return _ExpensesAdderState();
  }
}

class _ExpensesAdderState extends State<ExpensesAdder> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            maxLength: 50,
            decoration: InputDecoration(
              label: Text('Название'),
            ),
          ),
        ],
      ),
    );
  }
}
