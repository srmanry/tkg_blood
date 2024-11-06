import 'dart:io';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tkgblood/api_handle/auth/firebase_auth.dart';
import 'package:tkgblood/common/widgets/custom_textfild.dart';
import 'package:tkgblood/feature/home/view/home_screen.dart';
import 'package:tkgblood/util/dimensions.dart';
import 'package:tkgblood/util/styles.dart';


class AddFromScreenView extends StatefulWidget {
  const AddFromScreenView({super.key});

  @override
  State<AddFromScreenView> createState() => _AddFromScreenViewState();
}

class _AddFromScreenViewState extends State<AddFromScreenView> {
 final  bodyTextStyle = const TextStyle(fontSize: 14,);

 TextEditingController userNameController = TextEditingController();

 TextEditingController dateOfBirthController = TextEditingController();

 TextEditingController bloodGroupController = TextEditingController();

 TextEditingController professionController = TextEditingController();

 TextEditingController phoneNumberController = TextEditingController();

 TextEditingController religionController = TextEditingController();

 TextEditingController districtNameController = TextEditingController();
 TextEditingController emailController = TextEditingController();
 TextEditingController passwordController = TextEditingController();


// Text Controller dispose
 @override
  void dispose() {
    // TODO: implement dispose
   userNameController.dispose();
   dateOfBirthController.dispose();
   religionController.dispose();
   professionController.dispose();
   phoneNumberController.dispose();
   bloodGroupController.dispose();
   districtNameController.dispose();
    super.dispose();
  }

  final FirebaseAuthService _auth =FirebaseAuthService();
 final ImagePicker _imagePicker =ImagePicker();
 Future<void> pickImage()async {
   _imagePicker.pickImage(source: ImageSource.gallery);
 }
 int selectedIndex= 0;
 File?pickedImage;
 showAlertBox(){
   return showDialog(context: context, builder: (BuildContext context){
     return AlertDialog(

       title: Text("Set picture"),
       content: Column(
      mainAxisSize: MainAxisSize.min ,
       children: [
         ListTile(onTap: (){picImage(ImageSource.camera);
           Navigator.pop(context);
           },
           leading: Icon(Icons.camera_alt),
           title: Text("Camera"),
         ),
         ListTile(onTap: (){picImage(ImageSource.gallery);
         Navigator.pop(context);},
           leading: Icon(Icons.image),
           title: Text("Gallery"),
         ),
       ],),
     );
   });
 }


  String? selectedValue;
 List<String> bloodList =["A+","A-","B+","B-","AB+","AB-","O+","O-"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar( backgroundColor: const Color(0xFFB71C1C), centerTitle: true,
       title: const Text("Register",style: TextStyle(color: Colors.white),),
        foregroundColor: Colors.white,),

      body:  Padding(padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Welcome to\nTkG - Blood Bank',style: TextStyle(fontSize: Dimensions.fontSizeLarge, color: Color(0xFFB71C1C),fontWeight: FontWeight.bold),),
//                   //const Image(image: AssetImage("assets/images/blood_image.png"),height: 120,),
//                 ]
//               ),
//
// SizedBox(height: Dimensions.defaultSize,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Profile Image"),
                      Icon(Icons.arrow_forward,color: Colors.green,),
                    ],
                  ),
                ),
                InkWell(onTap: (){showAlertBox();},
                  child: pickedImage!=null? Container(
                    height: 50,width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.defaultSize),
                      border: Border.all(color: Colors.red),

                    ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(Dimensions.defaultSize),
                          child: Image(image: FileImage(pickedImage!,),fit: BoxFit.cover,))):


                  Container(height: 50,width: 50,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.defaultSize),
                      border: Border.all(color: Colors.red),),
                    child: Icon(Icons.add_a_photo,color: Colors.green,),
                ),)],),
            //  const SizedBox(height: 10,),
               const Padding( padding: EdgeInsets.all(8.0),child: Text("Name",style: textMedium,), ),
               CustomTextField(controller: userNameController,
                focusColor: Colors.black,hinText: "Name",),

              const Padding(padding: EdgeInsets.all(8.0),child: Text("Date of Birth"), ),
               CustomTextField(controller: dateOfBirthController,focusColor: Colors.black,hinText: "Date of birth",),
              const Padding(padding: EdgeInsets.all(8.0),child: Text("Blood Group"),),
              // CustomTextField( controller: bloodGroupController,focusColor: Colors.black, hinText: "Blood Group",),
           Container(
           decoration: BoxDecoration(color: Color(0xFFF3F3F3), borderRadius: BorderRadius.circular(Dimensions.defaultSize),),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: DropdownButton<String>(
               focusColor: Colors.white70,autofocus: false,
               underline: SizedBox(),

               iconSize: Dimensions.thirtyFive,icon: Icon(Icons.keyboard_arrow_down),
               isExpanded: true,
               style: TextStyle(fontWeight: FontWeight.w500,fontSize: Dimensions.fontSizeLarge,color: Colors.red),
               hint: Text('Select Blood Group'), // Placeholder when no item is selected
               value: selectedValue,
               items: bloodList.map((String item) {return DropdownMenuItem<String>(value: item, child: Padding(padding: const EdgeInsets.all(8.0), child: Text(item),),);
               }).toList(),
               onChanged: (String? newValue) {setState(() {selectedValue = newValue;});},),
           ),),

             // CustomTextField(controller: dateOfBirthController,focusColor: Colors.black,hinText: "Date of birth",),

              const Padding(padding: EdgeInsets.all(8.0),child: Text("Religion"),),
              CustomTextField( controller: religionController,focusColor: Colors.black, hinText: "Religion",),
              const Padding(padding: EdgeInsets.all(8.0),child: Text("Profession"),),
              CustomTextField(controller:professionController, focusColor: Colors.black, hinText: "Profession",),
              const Padding(padding: EdgeInsets.all(8.0),child: Text("Phone number"),),
              CustomTextField(controller: phoneNumberController,focusColor: Colors.black,hinText: "Phone number",),
              const Padding(padding: EdgeInsets.all(8.0),child: Text("District"),),
               CustomTextField(controller: districtNameController,focusColor: Colors.black,hinText: "District",),
              // const Padding(padding: EdgeInsets.all(8.0),child: Text("Email"),),
              //  CustomTextField(controller: emailController,focusColor: Colors.black,hinText: "email",),
              // const Padding(padding: EdgeInsets.all(8.0),child: Text("Password"),),
              //  CustomTextField(controller: passwordController,focusColor: Colors.black,hinText: "password",),

              const SizedBox(height: Dimensions.twenty,),

              InkWell(
                child: Container( height: 45, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color: const Color(0xFFB71C1C),),
                  child: const Center(child: Text("Save",style: TextStyle(fontSize: 16,color: Colors.white),),),),

              onTap: (){CollectionReference collRef = FirebaseFirestore.instance.collection(selectedValue=="A+"?"A_positive_user":selectedValue=="A-"?"aNagative":"bpositiveUser");
                  //
              // .collection("bpositiveUser")
              // .collection("aNagative")

                collRef.add({
                    "name":userNameController.text,
                    "bloodGroup":selectedValue=="A+"? "A+":selectedValue=="A-"?"A-":"B=",
                    "phoneNumber":phoneNumberController.text,
                    "profession":professionController.text,
                    "birthday":dateOfBirthController.text,
                    "religion":religionController.text,
                    "district":districtNameController.text
                  });


             },),

            ],), ),
      ),);
  }



 void signUp()async{
   String userName = userNameController.text;

   String dateOfBirth = dateOfBirthController.text;
   String bloodGroup = selectedValue==0?"A+":selectedValue==1?"B+":"B-";
   String religion = religionController.text;
   String profession = professionController.text;
   String number = phoneNumberController.text;
   String email = emailController.text;
   String password = passwordController.text;


   User?user = await _auth.signUpWithEmailPassword(email, password);

   if(user !=  null){
     print("Sign UP Successfully create");
     Get.to(HomeScreenView());}
   else{print('++++++++++++++');}}

 picImage(ImageSource imageSource)async{
   try{
     final photo = await ImagePicker().
     pickImage(source: imageSource);
     if(photo == null)return Icon(Icons.person);
     final tempImage =File(photo.path);


      setState(() {
        pickedImage=tempImage;
      });

   }

   catch(e){
    print(e);
   }
 }



  Future<void> sendDataToFirestore(String value) async {
    try {
      // Reference to the Firestore collection
      await FirebaseFirestore.instance.collection(selectedValue==0?'A_positive_user':selectedIndex==1?"bpositiveUser":"").add({
        'selectedValue': value,
        'timestamp': FieldValue.serverTimestamp(), // Optional: Add timestamp
       });
      print("============= ${value}");} catch (e)
      {
      print("Failed to send data: $e");
    }}

}


