import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExpensesAdder extends StatefulWidget {
  const ExpensesAdder({super.key});

  @override
  State<ExpensesAdder> createState() {
    return _ExpensesAdderState();
  }
}

class _ExpensesAdderState extends State<ExpensesAdder> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
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
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                  RegExp(r'^\d*\.?\d{0,2}')), // разрешает только цифры
            ],
            decoration: const InputDecoration(
              prefixText: '₽ ',
              label: Text('Сумма'),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  print(_amountController.text);
                  print(_titleController.text);
                },
                child: const Text(
                  'Сохранить',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Отменить'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
