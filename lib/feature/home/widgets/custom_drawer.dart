import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tkgblood/api_handle/auth/firebase_auth.dart';
import 'package:tkgblood/feature/auth/view/sign_up_view.dart';
import 'package:tkgblood/feature/profile/screen/profile_edit_screen.dart';
import 'package:tkgblood/feature/auth/view/sing_up_screen.dart';
import 'package:tkgblood/util/dimensions.dart';
import 'package:tkgblood/util/styles.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool active = true;
  final currentUser = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.white70,
        backgroundColor: const Color(0xFFB71C1C),centerTitle: true,
          title: const Text("TKG - Blood Bank",style: TextStyle(color: Colors.white),)),
        body: Padding(padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: Dimensions.thirty,),
            CircleAvatar(radius: Dimensions.thirty,),
            SizedBox(height: Dimensions.fifTeen,),
            Text("Name",style: textSemiBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
            Text("Suman Roy",style: textMedium.copyWith(fontSize: Dimensions.fontSizeLarge),),
            SizedBox(height: Dimensions.defaultSize,),
            Text("Date of Birth",style: textSemiBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
            Text("01/03/2001",style: appBodyText,),
            SizedBox(height: Dimensions.defaultSize,),
            Text("Blood Group",style: textSemiBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
            Text("Blood Group",style: appBodyText,),
            SizedBox(height: Dimensions.defaultSize,),
            Text("Religion",style: textSemiBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
            Text("Religion",style: appBodyText,),
            SizedBox(height: Dimensions.defaultSize,),
            Text("Phone Number",style: textSemiBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
            Text("01762817****",style: appBodyText,),
            SizedBox(height: Dimensions.defaultSize,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Edit Profile",style: appBodyText.copyWith(fontSize: Dimensions.fontSizeLarge),),
                InkWell(onTap: (){Get.to(ProfileEditScreenView);},
                child: Icon(Icons.edit,size: Dimensions.thirtyFive,color: Colors.green,))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(active==true?"Active":"In Active",style: textBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                Transform.scale(
                  scale: 0.6,

                  child: CupertinoSwitch(
                      activeColor: Colors.green,
                      trackColor: Colors.grey,
                      value: active, onChanged:(value){
                    setState(() {
                      active =value;

                    });
                  }),),
              ],   ),
            Text("Log out"),
            InkWell(onTap: (){Get.to(SignUpScreenView());},
            child: Text("About Us",style: textMedium,)),
            Text("Help ?",style: textMedium,),

          ],
        ),
      ),
    );
  }
}
