import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:expense_tracker/widgets/expenses/expenses.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Инициализируем русскую локаль перед использованием DateFormat
  await initializeDateFormatting('ru_RU', null);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Expenses(),
    );
  }
}
