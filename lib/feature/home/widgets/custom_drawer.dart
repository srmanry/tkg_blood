import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tkgblood/feature/profile/screen/profile_from.dart';
import 'package:tkgblood/util/dimensions.dart';
import 'package:tkgblood/util/styles.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white70,
        backgroundColor: const Color(0xFFB71C1C),centerTitle: true,


        title: const Text("TKG - Blood Bank",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
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
                Icon(Icons.edit,size: Dimensions.thirtyFive,color: Colors.green,)
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(active==true?"Active":"In Active",style: textBold.copyWith(fontSize: Dimensions.fontSizeLarge),),
                Transform.scale(
                  scale: 0.6,

                  child: CupertinoSwitch(
                     // offLabelColor: Colors.grey,
                      activeColor: Colors.green,
                     //focusColor: Colors.blue,
                     // onLabelColor: Colors.blue,

                      trackColor: Colors.grey,
                      value: active, onChanged:(value){
                    setState(() {
                      active =value;

                    });
                  }),
                ),
              ],
            ),
            InkWell(onTap: (){
              Get.to(AddFromScreenView());
            },
            child: Text("About Us",style: textMedium,)),
            Text("Help ?",style: textMedium,),

          ],
        ),
      ),
    );
  }
}
