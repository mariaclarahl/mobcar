import 'package:flutter/material.dart';

class SelectMarca extends StatefulWidget {
  const SelectMarca({Key? key}) : super(key: key);

  @override
  State<SelectMarca> createState() => _SelectMarcaState();
}

class _SelectMarcaState extends State<SelectMarca> {
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
