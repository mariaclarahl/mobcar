import 'package:flutter/material.dart';

class SelectAno extends StatefulWidget {
  const SelectAno({Key? key}) : super(key: key);

  @override
  State<SelectAno> createState() => _SelectAnoState();
}

class _SelectAnoState extends State<SelectAno> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_outlined),
      hint: const Text('Marca'),
      elevation: 16,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
