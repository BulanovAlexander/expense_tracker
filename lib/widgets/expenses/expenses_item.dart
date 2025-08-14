import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

final currencyFormatter = NumberFormat.currency(
  locale: 'ru_RU',
  symbol: '₽',
  decimalDigits: 2,
);

final dateFormatter = DateFormat('dd.MM.yyyy', 'ru_RU');

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.expense,
  });

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              expense.title,
            ),
            const SizedBox(
              height: 4.0,
            ),
            Row(
              children: <Widget>[
                Text(currencyFormatter.format(expense.amount)),
                const Spacer(),
                Row(
                  children: <Widget>[
                    const Icon(Icons.alarm),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(dateFormatter.format(expense.date)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
