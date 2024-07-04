import 'package:flutter/material.dart';
import 'package:tkgblood/widgets/custom_textfild.dart';

class AddFromScreenView extends StatelessWidget {
  const AddFromScreenView({super.key});
 final  bodyTextStyle = const TextStyle(fontSize: 14,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar( backgroundColor: const Color(0xFFB71C1C), centerTitle: true,
       title: const Text("Register",style: TextStyle(color: Colors.white),), ),

      body:  Padding(padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text('Join The \n       TKG - Blood Bank',style: TextStyle(fontSize: 18,color: Color(0xFFB71C1C),fontWeight: FontWeight.bold),),
          
              const SizedBox(height: 10,),
              const Padding( padding: EdgeInsets.all(8.0),child: Text("Name"), ),
              const CustomTextField(focusColor: Colors.black,hinText: "Name",),
          
              const Padding(padding: EdgeInsets.all(8.0),child: Text("Date of Birth"), ),
              const CustomTextField(focusColor: Colors.black,hinText: "Date of birth",),
              const Padding(padding: EdgeInsets.all(8.0),child: Text("Blood Group"),),
              const CustomTextField( focusColor: Colors.black, hinText: "Blood Group",),
              const Padding(padding: EdgeInsets.all(8.0),child: Text("Profession"),),
              const CustomTextField( focusColor: Colors.black, hinText: "Profession",),
              const Padding(padding: EdgeInsets.all(8.0),child: Text("Phone number"),),
              const CustomTextField(focusColor: Colors.black,hinText: "Phone number",),
              const Padding(padding: EdgeInsets.all(8.0),child: Text("District"),),
              const CustomTextField(focusColor: Colors.black,hinText: "District",),
          
              const SizedBox(height: 50,),

              Container( height: 45, decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),  color: const Color(0xFFB71C1C),),
                child: const Center(child: Text("Save",style: TextStyle(fontSize: 16,color: Colors.white),),),),
            
            
            ],
          ),
        ),
      ),
    );
  }
}