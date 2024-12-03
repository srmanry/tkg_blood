import 'package:flutter/material.dart';
import 'package:tkgblood/common/widgets/custom_tabar.dart';
import 'package:tkgblood/util/dimensions.dart';

class DashboardScreenView extends StatefulWidget {
  const DashboardScreenView({super.key});

  @override
  State<DashboardScreenView> createState() => _DashboardScreenViewState();
}

class _DashboardScreenViewState extends State<DashboardScreenView> {

  int selectedIndex = 0;
  setSelectedIndex(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  final List<String> bloodList =["A+","A-","B+","B-","AB+","AB-","O+","O-"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(elevation: 0,toolbarHeight: 30,
        foregroundColor: Colors.white70,
        backgroundColor: const Color(0xFFB71C1C),centerTitle: true,
        title: const Text("TKG - Blood Bank",style: TextStyle(color: Colors.white),),
      ),

      body: Column(
        children: [

          Container( height: 90, decoration: const BoxDecoration(color: Color(0xFFB71C1C),
              boxShadow: [BoxShadow(color: Colors.white,blurStyle: BlurStyle.solid, blurRadius: 10),]),
            child: Padding(padding:  const EdgeInsets.symmetric(vertical: Dimensions.twenty),
              child: SizedBox(
                child: Expanded(
                  child: ListView.builder(itemCount: bloodList.length,
                      scrollDirection: Axis.horizontal,itemBuilder: (_,index){
                        return FundRisingTypeItem( index: index,selectedIndex: selectedIndex,
                            tabNameWidget:Text(bloodList[index],style:TextStyle(color:  index ==selectedIndex?Color(0xFFB71C1C):Colors.white,fontSize: 14,fontWeight: FontWeight.w700)) ,

                            onTap: (){setState(() {selectedIndex = index;});}
                        );
                      }),
                ),
              ),),
          ),



        ],
      ),
    );
  }
}
