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
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: DropdownButtonFormField<String>(
        icon: const Icon(Icons.arrow_drop_down_outlined),
        hint: const Text('Ano'),
        isExpanded: true,
        isDense: true,
        decoration: const InputDecoration(border: OutlineInputBorder()),
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
      ),
    );
  }
}
