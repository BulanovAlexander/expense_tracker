import 'package:flutter/material.dart';

class ExpensesAdder extends StatefulWidget {
  const ExpensesAdder({super.key});

  @override
  State<ExpensesAdder> createState() {
    return _ExpensesAdderState();
  }
}

class _ExpensesAdderState extends State<ExpensesAdder> {
  var _title = '';

  void _handleTitleChange(String value) {
    _title = value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Название'),
            ),
            onChanged: _handleTitleChange,
          ),
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  print(_title);
                },
                child: const Text(
                  'Сохранить',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
