
import 'package:flutter/material.dart';

import 'package:tkgblood/tabpage/view/a_negative_screen.dart';
import 'package:tkgblood/tabpage/view/a_positive_screen.dart';
import 'package:tkgblood/tabpage/view/ab_nagative_screen.dart';
import 'package:tkgblood/tabpage/view/ab_positive_screen.dart';
import 'package:tkgblood/tabpage/view/b_nagative_screen.dart';
import 'package:tkgblood/tabpage/view/b_positiveScreenView.dart';
import 'package:tkgblood/tabpage/view/o_nagative_screen.dart';
import 'package:tkgblood/tabpage/view/o_positive_screen.dart';
import 'package:tkgblood/widgets/tab_widgest.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB71C1C),
     // backgroundColor: const Color(0xfffffebd0),
      appBar: AppBar( elevation: 0,toolbarHeight: 40,
        leading: const Icon(Icons.sort,color: Colors.white,),
        backgroundColor: const Color(0xFFB71C1C),centerTitle: true,
        title: const Text("TKG - Blood Bank",style: TextStyle(color: Colors.white),),
        actions: [
          //IconButton( onPressed: () {},
         // icon: InkWell(onTap: (){Get.to(  AddFromScreenView());}, child: const Icon(Icons.person_add,color: Colors.white,)))
        ],
      ),
      body: Column(children: [ Expanded( flex: 2,
            child: DefaultTabController(length: 8,
                child: Column(children: [Material(

                      child: Container(
                        height: 60, decoration: const BoxDecoration(color: Color(0xFFB71C1C),
                        boxShadow: [BoxShadow(color: Colors.white,blurStyle: BlurStyle.solid, blurRadius: 10),]),

                        child: Center( child: Padding( padding: const EdgeInsets.all(8.0),
                            child: TabBar(indicator: BoxDecoration(
                                boxShadow: const [ BoxShadow(color:Colors.white,blurRadius: 10), ],
                                borderRadius: BorderRadius.circular(10),border:  Border.all(color: Colors.white),color: Colors.white,),
                                unselectedLabelStyle:const TextStyle(color: Colors.white),
                                unselectedLabelColor: Colors.white,labelStyle: const TextStyle(color: Colors.red),
                                labelPadding: const EdgeInsets.symmetric( vertical: 1, horizontal: 3, ),
                                dividerHeight: 150,dividerColor: const Color(0xFFB71C1C),padding: EdgeInsets.zero,
                                tabs: const [
                                  Tab( child: TabWidget(tabName: "A +")),
                                  Tab( child: TabWidget(tabName: "A -",),),
                                  Tab(child: TabWidget(tabName: "B +",),),
                                  Tab(child: TabWidget(tabName: "B -",),),
                                  Tab(child: TabWidget(tabName: "AB +",), ),
                                  Tab(child: TabWidget(tabName: "AB -",),),
                                  Tab(child: TabWidget(tabName: "O +",),),
                                  Tab(child: TabWidget(tabName: "O -",),),]),),),), ),

                    const Expanded  (child: TabBarView(children: [
                        APositiveScreenView(),
                        ANagativeScreen(),
                        BPositiveScreen(),
                        BNagativeScreen(),
                        AbPositiveScreen(),
                        AbNagativeScreen(),
                        OPositiveScreen(),
                        ONegativeScreen(),]), )
                  ], )),
          ),



        ], ),
 //    bottomNavigationBar:BottomNavigationBar(items: [])
    );
  }
}
