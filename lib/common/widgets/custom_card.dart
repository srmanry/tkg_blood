
import 'package:flutter/material.dart';
import 'package:tkgblood/util/dimensions.dart';
import 'package:tkgblood/util/styles.dart';


class CustomCardWidget extends StatelessWidget {
 final String name;
 final String image;
 final String dateOfBirth;
 final String profession;
 final String location;
 final String religion;



  const CustomCardWidget({super.key,required this.image, required this.name,
  required this.profession,required this.location, required this.dateOfBirth, required this.religion,  });
  final  bodyTextStyle = const TextStyle(fontSize: 14,fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                child: Container(
                 decoration: BoxDecoration( color: Colors.white,
                     borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.white)    ),
                  child: Stack(children: [
                  Column( children: [
                    Padding(padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Row( children: [
                              //Icon(Icons.account_circle_outlined,size: Dimensions.thirty,),
                            CircleAvatar(
                             // backgroundImage: AssetImage("assets/images/user2.jpg"),
                              child: Text(image),
                            ),
                             SizedBox(width: Dimensions.twenty,),
                              Text(name,style: appBodyText,), ],),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: Dimensions.eight),
                            child: Row( children: [
                                Icon(Icons.calendar_month,size: Dimensions.thirty,color: Colors.green,),
                              SizedBox(width: Dimensions.thirtyFive,),
                              Text(dateOfBirth,style: appBodyText,)
                              ],),
                          ),


                          Row(children: [
                            Icon(Icons.favorite_border,size: Dimensions.thirty,color: Colors.red,),
                            SizedBox(width: Dimensions.thirtyFive,),
                            Text(religion,style: appBodyText,),
                          ], ),

                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: Dimensions.eight),
                       child: Row(children: [
                          Icon(Icons.work_history_outlined,size: Dimensions.thirty,color: Colors.amber,),
                         SizedBox(width: Dimensions.thirtyFive,),
                         Text(profession,style: appBodyText,),
                        ], ),
                     ),

                          Row(children: [
                              const Icon(Icons.location_city_outlined,size: Dimensions.thirty,color: Colors.blue,),
                            const SizedBox(width: Dimensions.thirtyFive,),
                              Text(location,style: appBodyText,),
                            ],
                          ),

                        ],
                      ),
                    )], ),

                                  Align(alignment: Alignment.bottomRight,
                                  child: Padding(padding: const EdgeInsets.all(8.0),
                                    child: Container(height: 45,width: 45,decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                     // color: Colors.green.shade50
                                    ),
                                        child: Icon(Icons.phone_forwarded,color: Colors.green[700],)), )),
                ],
              ),

                ),
              );
  }
}