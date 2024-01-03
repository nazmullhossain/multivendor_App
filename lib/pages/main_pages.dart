import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:multivendor/const/const.dart';

import '../conrollers/tab_index_controller.dart';
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  tabIndexController=Get.put(TabIndexController());
    return Obx(() => Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: kOffWhite,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: kPrimary),
              child: BottomNavigationBar(
                onTap: (value){
                  tabIndexController.setTabIndex=value;
                  print(value);
                },
                currentIndex: tabIndexController.tabIndex,
                selectedIconTheme: IconThemeData(
                    color: kWhite
                ),
                showSelectedLabels: false,
                showUnselectedLabels: false,
                unselectedIconTheme: IconThemeData(
                    color: Colors.black38
                ),
                items: [
                  BottomNavigationBarItem(icon:
                  tabIndexController.tabIndex==0? Icon(AntDesign.appstore1):Icon(AntDesign.appstore_o),label: "Home"),
                  BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
                  BottomNavigationBarItem(icon: Badge(
                      label: Text("1"),
                      child: Icon(Icons.shopping_cart)),label: "Cart"),
                  BottomNavigationBarItem(icon: tabIndexController==3?
                  Icon(FontAwesome.user_circle): Icon(FontAwesome.user_circle_o),label: "ProFile")
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
