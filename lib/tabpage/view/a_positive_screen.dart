

import 'package:flutter/material.dart';
import 'package:tkgblood/widgets/custom_card.dart';
import 'package:tkgblood/widgets/search_widget.dart';

class APositiveScreenView extends StatelessWidget {
  const APositiveScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       // backgroundColor: const Color(0xFFB71C1C),
      //backgroundColor:   const Color(0xFFEEEEEE),
      body: Column(
        children: [
          const SearchWidget(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_,index){
              return const CustomCardWidget(
                image: "assets/images/user2.jpg",
                name: "Suman",
                location: "Thakugaron",
                profession: "Student",
                number: "01258848547",
                discription: "TKG blood app",


              );
            }),
          ),
        ],
      )
    );
  }
}
