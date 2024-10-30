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
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Join The \nTKG - Blood Bank',style: TextStyle(fontSize: Dimensions.fontSizeOverLarge, color: Color(0xFFB71C1C),fontWeight: FontWeight.bold),),
                  const Image(image: AssetImage("assets/images/blood_image.png"),height: 120,),
                ]
              ),


              const SizedBox(height: 10,),
            // Center(child: Stack(
            //   children: [
            //     CircleAvatar(radius: 45,),
            //     Positioned(left: 65,top: 60,child: InkWell(onTap: (){pickImage();},child: Icon(Icons.camera_alt,)))
            //   ],
            // )),

              const Padding( padding: EdgeInsets.all(8.0),child: Text("Name"), ),
               CustomTextField(controller: userNameController,
                focusColor: Colors.black,hinText: "Name",),

              const Padding(padding: EdgeInsets.all(8.0),child: Text("Date of Birth"), ),
               CustomTextField(controller: dateOfBirthController,focusColor: Colors.black,hinText: "Date of birth",),
              const Padding(padding: EdgeInsets.all(8.0),child: Text("Blood Group"),),
               CustomTextField( controller: bloodGroupController,focusColor: Colors.black, hinText: "Blood Group",),
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

              const SizedBox(height: 50,),

              InkWell(
                child: Container( height: 45, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color: const Color(0xFFB71C1C),),
                  child: const Center(child: Text("Save",style: TextStyle(fontSize: 16,color: Colors.white),),),),

             onTap: (){
                  CollectionReference collRef = FirebaseFirestore.instance.collection("A_positive_user");
                  collRef.add({
                    "name":userNameController.text,
                    "bloodGroup":bloodGroupController.text,
                    "phoneNumber":phoneNumberController.text,
                    "profession":professionController.text,
                    "birthday":dateOfBirthController.text,
                    "religion":religionController.text,
                    "district":districtNameController.text
                  });
             },
              ),

            ],
          ),
        ),
      ),
    );
  }



 void signUp()async{
   String userName = userNameController.text;

   String dateOfBirth = dateOfBirthController.text;
   String bloodGroup = bloodGroupController.text;
   String religion = religionController.text;
   String profession = professionController.text;
   String number = phoneNumberController.text;
   String email = emailController.text;
   String password = passwordController.text;


   User?user = await _auth.signUpWithEmailPassword(email, password);

   if(user !=  null){
     print("Sign UP Successfully create");
     Get.to(HomeScreenView());
   }else{
     print('++++++++++++++');
   }

 }
}
