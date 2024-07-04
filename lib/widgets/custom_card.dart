
import 'package:flutter/material.dart';


class CustomCardWidget extends StatelessWidget {
 final String name;
 final String image;
 final String profession;
 final String location;
 final String discription;
 final String number;
  const CustomCardWidget({super.key,required this.image, required this.name, required this.number,
  required this.profession,required this.location, required this.discription});
  final  bodyTextStyle = const TextStyle(fontSize: 14,fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                child: Container(
                 decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(00),border: Border.all(color: Colors.white)    ),
                  child: Stack(children: [
                  Column( children: [
                    Padding(padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [Column(
                          children: [
                          Text("Name               :",style: bodyTextStyle,),
                          Text('Date of Birth   :',style: bodyTextStyle),
                          Text('Profession      :',style: bodyTextStyle),
                          Text("Drastic            :",style: bodyTextStyle),
                          Text("Phone             :",style: bodyTextStyle),
                          ], 
                        ),
                          const SizedBox(width: 20,),
                          Expanded(child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(name,style: const TextStyle(fontSize: 16,),),
                               
                                  ],
                                ),
                                const Text("01/05/2001"),
                                Text(profession),
                                Text(location),   
                                const Row(children: [Text("01580498155"),],)
                              
                              ], ), )], ), )], ),

                                  const Align(alignment: Alignment.bottomRight,
                                  child: Padding(padding: EdgeInsets.all(8.0),child: Icon(Icons.phone,color: Colors.green,), )),
                ],
              ),

                ),
              );
  }
}