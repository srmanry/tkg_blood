import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tkgblood/profile/profile_from.dart';
import 'package:tkgblood/util/dimensions.dart';
import 'package:tkgblood/util/styles.dart';

class ProfileViewScreen extends StatelessWidget {
  const ProfileViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C), centerTitle: true,
        title: const Text("Profile",style: TextStyle(color: Colors.white),),
        forceMaterialTransparency: false,foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.edit,color: Colors.white,),
          )],
      ),

      body: Padding(
        padding: const EdgeInsets.all(Dimensions.fifTeen),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user2.jpg"),
            radius: Dimensions.thirty,
          ),
          
          SizedBox(height: Dimensions.twenty,),
          Text("Dinmas",style: appBodyText,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.fifTeen),
            child: Text("01/03/2001",style: appBodyText,),
          ),
          Text("Student",style: appBodyText,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.fifTeen),
            child: Text("A+",style: appBodyText,),
          ),
          Text("0176325892"),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
            child: Text("Thakurgaon",style: appBodyText,),
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Text("Active Statuse"),
            Icon(Icons.toggle_off_outlined)
          ],),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
            child: InkWell(onTap: (){
              Get.to(AddFromScreenView());
            },child: Text("Add")),
          ),
        ],),
      ),
    );
  }
}
