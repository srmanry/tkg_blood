import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tkgblood/feature/home/view/home_screen.dart';

class AuthController extends GetxController{

 final userNameController = TextEditingController();
 final dateOfBirthController = TextEditingController();
 final bloodGroupController = TextEditingController();
 final professionController = TextEditingController();
 final phoneNumberController = TextEditingController();
 final religionController = TextEditingController();
 final  districtNameController = TextEditingController();
 final emailController = TextEditingController();
 final  passwordController = TextEditingController();



  var selectedIndex= ''.obs;
 // final String? selectedValue;
 final List<String> bloodList =["A+","A-","B+","B-","AB+","AB-","O+","O-"].obs;
 void updateSelectedItem(String value) {
   selectedIndex.value = value;
 }
}


/*
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

*/



