import 'package:flutter/material.dart';

class ExpensesAdder extends StatefulWidget {
  const ExpensesAdder({super.key});

  @override
  State<ExpensesAdder> createState() {
    return _ExpensesAdderState();
  }
}

class _ExpensesAdderState extends State<ExpensesAdder> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Название'),
            ),
          ),
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
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
