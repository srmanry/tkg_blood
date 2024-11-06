

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tkgblood/common/widgets/custom_card.dart';
import 'package:tkgblood/common/widgets/search_widget.dart';



class APositiveScreenView extends StatefulWidget {
  const APositiveScreenView({super.key});

  @override
  State<APositiveScreenView> createState() => _APositiveScreenViewState();
}

class _APositiveScreenViewState extends State<APositiveScreenView> {
  final CollectionReference aPositiveUser =
  FirebaseFirestore.instance.collection("A_positive_user");


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[200],
       // backgroundColor: const Color(0xFFB71C1C),
      //backgroundColor:   const Color(0xFFEEEEEE),
      // body: Column(
      //   children: [
      //     const SearchWidget(),
      //     Expanded(
      //       child:
      //     ),
      //   ],
      // )

      body: Column(
        children: [
          const SearchWidget(),
          Expanded(
            child: StreamBuilder(stream: aPositiveUser.snapshots(),
                builder: (context,AsyncSnapshot<QuerySnapshot>streamSnapshot){
                  if(streamSnapshot.hasData){
                    return   ListView.builder(
                        itemCount: streamSnapshot.data!.docs.length,
                        itemBuilder: (_,index){
                          final DocumentSnapshot documentSnapshot =
                          streamSnapshot.data!.docs[index];
            
                          return Material(child:  CustomCardWidget(
                            //
                             //image: '$index',
                            name: documentSnapshot["name"],
                           // dateOfBirth: documentSnapshot["birthday"],
                            religion:documentSnapshot["religion"] ,
                            //profession: documentSnapshot["profession"],

                            location: documentSnapshot["district"],
                            number: documentSnapshot["phoneNumber"],
                         //   indexNumber: documentSnapshot[streamSnapshot.data!.docs.length]

                          ),);   }); }
                  return Center(
                    child:  Text("data not found"),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

/*
 ListView.builder(
              itemCount: apositiveList.length,
              itemBuilder: (_,index){
              return  CustomCardWidget(

                image: "assets/images/user2.jpg",
                name: apositiveList[index].name,
                location: apositiveList[index].dristict,
                profession: apositiveList[index].profession,
                dateOfBirth: apositiveList[index].dateofBirth,


              );
            }),
 */
