import 'package:flutter/material.dart';
import 'filter_widgets.dart';

class FilterWidget extends StatelessWidget {
  final String gender;
  final String category;
  final int income;
  final Function(String, String, int) onFilterChange;

  FilterWidget({
    required this.gender,
    required this.category,
    required this.income,
    required this.onFilterChange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          DropdownButton<String>(
            value: gender,
            items: ['Any', 'Male', 'Female']
                .map((g) => DropdownMenuItem(value: g, child: Text(g)))
                .toList(),
            onChanged: (val) => onFilterChange(val!, category, income),
          ),
          DropdownButton<String>(
            value: category,
            items: ['Any', 'SC', 'ST', 'OBC', 'General']
                .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                .toList(),
            onChanged: (val) => onFilterChange(gender, val!, income),
          ),
        ]),
        Slider(
          value: income.toDouble(),
          min: 10000,
          max: 100000,
          divisions: 9,
          label: "Income < $income",
          onChanged: (val) => onFilterChange(gender, category, val.toInt()),
        ),
      ],
    );
  }
}