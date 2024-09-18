import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // 用來格式化日期

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _dateController.text = DateFormat('yyyy-MM-dd').format(_selectedDate!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          child: TextFormField(
            controller: _dateController,
            decoration: InputDecoration(
              // icon: Icon(Icons.calendar_today),
              labelText: '選擇日期',
              border: OutlineInputBorder(),
            ),
            readOnly: true, // 禁止手動輸入
            onTap: () => _selectDate(context), // 點擊時顯示日期選擇器
          ),
        ),
      ],
    );
  }
}
