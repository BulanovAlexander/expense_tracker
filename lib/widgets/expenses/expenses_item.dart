import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

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
                Text(expense.formattedCurrency),
                const Spacer(),
                Row(
                  children: <Widget>[
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(expense.formattedDate),
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
