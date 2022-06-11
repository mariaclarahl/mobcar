import 'package:flutter/material.dart';

class SelectModelo extends StatefulWidget {
  const SelectModelo({Key? key}) : super(key: key);

  @override
  State<SelectModelo> createState() => _SelectModeloState();
}

class _SelectModeloState extends State<SelectModelo> {
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
