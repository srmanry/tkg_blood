import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tkgblood/common/widgets/custom_card.dart';
import 'package:tkgblood/common/widgets/search_widget.dart';

class BPositiveScreen extends StatefulWidget {
  const BPositiveScreen({super.key});

  @override
  State<BPositiveScreen> createState() => _BPositiveScreenState();
}

class _BPositiveScreenState extends State<BPositiveScreen> {
  final CollectionReference aPositiveUser =
  FirebaseFirestore.instance.collection("bpositiveUser");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: const Color(0xFFB71C1C),
        backgroundColor:   const Color(0xFFEEEEEE),
      body:  Column(
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
                            dateOfBirth: documentSnapshot["birthday"],
                            religion:documentSnapshot["religion"] ,
                            profession: documentSnapshot["profession"],

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
