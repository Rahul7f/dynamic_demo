import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Uimodel.dart';
import '../global.dart';

class FromWidget extends StatelessWidget {
  List<Field> fildsList;
   FromWidget({super.key,required this.fildsList});
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      child: Padding(
        padding:  const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: fildsList.map((e) {
           return Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),

              ),
           );
          }).toList(),
        ),
      ),
    );
  }
}
