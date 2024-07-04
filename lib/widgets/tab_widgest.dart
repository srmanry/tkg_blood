import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String tabName;
  const TabWidget({super.key,required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 40,
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(12),
          border: Border.all(
              color: Colors.white,width: 1.5)
     ),
      child:  Center(child: Text(tabName,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w700),)),
    );
  }
}