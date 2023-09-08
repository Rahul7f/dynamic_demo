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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(section?.properties?.headerTitle??"",style:
                    const TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                    Text(section.properties?.headerSubtitle??"", style: const TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Container(height: 50,width: 50,decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
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
