import 'package:demo/Uimodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  late Field field;

  GenderSelection({super.key, required this.field});

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  // Define two variables to hold the selected gender and a default value.
  String selectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            widget.field.name!,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        Column(
          children: widget.field.properties!.selections!
              .map((selection) => buildRadioListTile(selection))
              .toList(),
        )
      ],
    );
  }

  RadioListTile<String> buildRadioListTile(Selection section) {
    return RadioListTile(
      title: Text('${section.title}'),
      value: section.title!,
      groupValue: selectedGender,
      onChanged: (value) {
        setState(() {
          selectedGender = value!;
        });
      },
    );
  }
}
