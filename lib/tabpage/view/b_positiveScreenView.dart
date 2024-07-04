import 'package:flutter/material.dart';

class BPositiveScreen extends StatelessWidget {
  const BPositiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFB71C1C),
        //backgroundColor:   const Color(0xFFEEEEEE),
      body: Column(
        children: [
          Container(color:  const Color(0xFFB71C1C),
            child: Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 45,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                child: TextField(
                    decoration: InputDecoration(contentPadding: EdgeInsets.zero, fillColor: Colors.white,
                    border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(10),),
                    hintText: 'Drastic Name',),),),),
          ),
          Expanded(child: ListView.builder(
             itemCount: 20,itemBuilder: (_,index){
             return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Container(height: 80,decoration: BoxDecoration(
                color: Colors.white,borderRadius: BorderRadius.circular(10), ),

                ),
              );
            }),
          ),
        ],
      )
    );
  }
}
