
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:tkgblood/util/dimensions.dart';
import 'package:tkgblood/util/styles.dart';


class CustomCardWidget extends StatelessWidget {
 final String name;
 final String? image;
 final String ?dateOfBirth;
 final String ?profession;
 final String location;
 final String religion;
 final String number;



  const CustomCardWidget({super.key,this.image, required this.name,
  this.profession,required this.location,  this.dateOfBirth, required this.religion, required this.number,  });
  final  bodyTextStyle = const TextStyle(fontSize: 14,fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Container(decoration: BoxDecoration( color: Colors.white,
                     borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.white)    ),
                  child: Stack(children: [
                  Column( children: [
                    Padding(padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Row( children: [
                             // Icon(Icons.account_circle_outlined,size: Dimensions.forty,),
                            CircleAvatar(
                             backgroundImage: AssetImage("assets/images/user2.jpg"),
                             // child: Text(image),
                            ),
                             SizedBox(width: Dimensions.twenty,),
                              Expanded(child: Text(name,style: appBodyText,)), ],),

                         /* Padding(
                            padding: const EdgeInsets.symmetric(vertical: Dimensions.eight),
                            child: Row( children: [
                                Icon(Icons.calendar_month,size: Dimensions.thirty,color: Colors.green,),
                              SizedBox(width: Dimensions.thirtyFive,),
                              Text("",style: appBodyText,)
                              ],),
                          ),*/

                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.bloodtype_outlined,color: Colors.red,size: Dimensions.thirty),
                          SizedBox(width: Dimensions.thirtyFive,),
                          Text('A+')
                        ],
                      ),
                          SizedBox(height: 8,),
                      /*    Row(children: [
                            Icon(Icons.favorite,size: Dimensions.thirty,color: Colors.black,),
                            SizedBox(width: Dimensions.thirtyFive,),
                            Text(religion,style: appBodyText,),
                          ], ),*/

               /*      Padding(
                       padding: const EdgeInsets.symmetric(vertical: Dimensions.eight),
                       child: Row(children: [
                          Icon(Icons.work_history_outlined,size: Dimensions.thirty,color: Colors.amber,),
                         SizedBox(width: Dimensions.thirtyFive,),
                         Text("",style: appBodyText,),
                        ], ),
                     ),*/

                          Row(children: [
                              const Icon(Icons.location_city_outlined,size: Dimensions.thirty,color: Colors.black,),
                            const SizedBox(width: Dimensions.thirtyFive,),
                              Text(location,style: appBodyText,),
                            ],
                          ),

                        ],
                      ),
                    )], ),

                                  Align(alignment: Alignment.bottomRight,
                                  child: Padding(padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      child: Container(height: 30,width: 45,decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),),

                                       //  child: Center(child: Text("Call",style: textMedium.copyWith(color: Colors.white),)),
                                         child: Icon(Icons.phone_forwarded,color: Colors.green[700],)
                                      ),
                                      onTap: (){
                                        FlutterPhoneDirectCaller.callNumber(number);
                                      },
                                    ),
                                  )),
                ],
              ),

                ),
              );
  }
}