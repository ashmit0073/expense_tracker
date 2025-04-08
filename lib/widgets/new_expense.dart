import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/number_symbols_data.dart';

class NewExpense extends StatefulWidget {
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
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
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            maxLength: 10,
            decoration: const InputDecoration(label: Text('Amount')),
          ),

          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text + ' ' + _amountController.text);
                },
                child: const Text('Save Expense'),
              ),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text('Cancel'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
