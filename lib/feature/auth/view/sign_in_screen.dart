import 'package:flutter/material.dart';
import 'package:tkgblood/common/widgets/custom_textfild.dart';
import 'package:tkgblood/util/styles.dart';

class SignInScreenView extends StatelessWidget {
  SignInScreenView({super.key});
final TextEditingController phoneController = TextEditingController();
final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:     Text("Sign in Screen"),
      ),
      body: Column(
        children: [

          SizedBox(height: 150,),
          const Padding( padding: EdgeInsets.all(8.0),child: Text("Phone Number",style: textMedium,), ),
          CustomTextField(controller: phoneController,
            focusColor: Colors.black,hinText: "number",),


          const Padding( padding: EdgeInsets.all(8.0),child: Text("Password",style: textMedium,), ),
          CustomTextField(controller: phoneController,
            focusColor: Colors.black,hinText: "password",),



        ],
      ),
    );
  }
}
