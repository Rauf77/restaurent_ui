import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurent_ui/app/modules/home/views/home_view.dart';

import '../../chat/views/chat_view.dart';
import '../../users/views/users_view.dart';
import '../../work/views/work_view.dart';
import '../controllers/bottom_nav_controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class BottomNavView extends GetView<BottomNavController> {

   BottomNavView({Key? key}) : super(key: key);
  final BottomNavController _controller = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
              () => IndexedStack(
            index: _controller.selectedIndex.value,
            children: [
              HomeView(),
              WorkView(),
              ChatView(),
              UsersView(),
              UsersView(),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            height: 60,
            backgroundColor: Colors.white,
            elevation: 10,
            indicatorColor: Colors.white,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          child: NavigationBar(
            onDestinationSelected: _controller.selectDestination,
            selectedIndex: _controller.selectedIndex.value,
            destinations: const [
              NavigationDestination(

                icon: Icon(EvaIcons.search),
                label: 'さがす',
              ),
              NavigationDestination(

                icon: Icon(EvaIcons.briefcaseOutline),
                label: 'お仕事',
              ),
              NavigationDestination(

                icon: Icon(EvaIcons.square,color: Colors.white,),
                label: '打刻する',
              ),
              NavigationDestination(

                icon: Icon(EvaIcons.messageCircleOutline),
                label: 'チャット',
              ),
              NavigationDestination(

                icon: Icon(EvaIcons.personOutline),
                label: 'チャット',
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.amber[300],

          onPressed:(){
            Get.to(ChatView());
          },


          child:Icon(EvaIcons.square) ,
        ),
      ),
    );
  }
}
