import 'package:flutter/material.dart';
import 'package:tkgblood/common/widgets/custom_textfild.dart';
import 'package:tkgblood/util/dimensions.dart';

class ProfileEditScreenView extends StatelessWidget {
  const ProfileEditScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C), centerTitle: true,
        title: const Text("Profile Edit",style: TextStyle(color: Colors.white),),
        forceMaterialTransparency: false,foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Padding( padding: EdgeInsets.all(8.0),child: Text("Name"), ),
            CustomTextField(),
            const Padding( padding: EdgeInsets.symmetric(horizontal: 8.0),child: Text("Name"), ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
              child: CustomTextField(),
            ),
            const Padding( padding: EdgeInsets.all(8.0),child: Text("Name"), ),
            CustomTextField(),
            const Padding( padding: EdgeInsets.all(8.0),child: Text("Name"), ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
              child: CustomTextField(),
            ),
            const Padding( padding: EdgeInsets.all(8.0),child: Text("Name"), ),
            CustomTextField(),
            const Padding( padding: EdgeInsets.all(8.0),child: Text("Name"), ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
              child: CustomTextField(),
            ),
            const Padding( padding: EdgeInsets.all(8.0),child: Text("Name"), ),
            CustomTextField(),

            Spacer(),
            InkWell(
              child: Container( height: 45, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color: const Color(0xFFB71C1C),),
                child: const Center(child: Text("Update",style: TextStyle(fontSize: 16,color: Colors.white),),),),

              onTap: (){},),

            SizedBox(height: Dimensions.defaultSize,)
          ],
        ),
      ),

    );
  }
}
