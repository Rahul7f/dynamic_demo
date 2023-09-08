import 'package:demo/Uimodel.dart';
import 'package:demo/Widget/genderWidget.dart';
import 'package:demo/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widget/form_widget.dart';
import 'Widget/headder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late UiModel data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getUi();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(section: data.sections![0]),
            FromWidget(fildsList: [data.sections![0].fields![0], data.sections![0].fields![1]]),
            GenderSelection(field: data.sections![0].fields![2]),
            ElevatedButton(onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }

            }, child: Text("Submit"))
          ]
        ),
      ),
      ),
    );
  }


}
