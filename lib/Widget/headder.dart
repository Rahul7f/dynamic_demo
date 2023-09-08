import 'package:demo/Uimodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  Section section;
  HeaderWidget({super.key,required this.section});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(section?.properties?.headerTitle??""),
                  const SizedBox(height: 10,),
                  Text(section.properties?.headerSubtitle??""),
                ],
              ),
              Spacer(),
              Container(height: 50,width: 50,decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: NetworkImage(section.properties?.headerIconUrl??""
                    )
                ),)),
            ],
          ),

        ],
      ),
    );
  }
}
