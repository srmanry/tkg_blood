import 'package:flutter/material.dart';

import 'package:tkgblood/util/dimensions.dart';


class CustomTab extends StatefulWidget {
  final Widget ?nameList;
 final List ?itemsList;
  const CustomTab({super.key,this.itemsList,  this.nameList});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  int selectedIndex = 0;
  setSelectedIndex(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeLarge),
      child: SizedBox(height: 35,
          child: ListView.builder(
              shrinkWrap: true,

              itemCount: tabNameList.length,
              scrollDirection: Axis.horizontal,padding: EdgeInsets.zero,
              itemBuilder: (context, index){
                return FundRisingTypeItem(index: index, selectedIndex: selectedIndex,tabNameWidget: Text(""),
                  onTap: (){ setState(() {selectedIndex = index;});},);
              })),
    );
  }
}



class FundRisingTypeItem extends StatelessWidget {
  // final String ?tabName;
  final Widget? tabNameWidget;
  final int index;
  final int selectedIndex;
  final Function()? onTap;
  const FundRisingTypeItem({super.key, this.onTap, required this.index, required this.selectedIndex,this.tabNameWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(onTap: onTap,
          child: Container(width: 40,height: 38,
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                  color: index == selectedIndex? Theme.of(context).cardColor : Color(0xFFB71C1C),
                  border: Border.all(width: 1.5, color: index == selectedIndex?
                  Theme.of(context).cardColor :Colors.white)),
                  child: Center(child:tabNameWidget,
                  // Text(
                  //
                  //     tabName,
                  // style: textMedium.copyWith(color: index == selectedIndex?
                  // Theme.of(context).cardColor : Colors.black,
                  //   // Theme.of(context).hintColor
                  // ))
                  ))
      ),
    );
  }
}

List tabNameList = ["All","Discover","Women","Men","Shoe"];
