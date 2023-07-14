import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurent_ui/app/modules/bottomNav/views/bottom_nav_view.dart';

import '../../storeprofile/views/storeprofile_view.dart';
import '../controllers/carddetailes_controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class CarddetailesView extends GetView<CarddetailesController> {
  CarddetailesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: h,
          width: w,
          color: Colors.indigo[100],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(

                      child: CircleAvatar(
                        backgroundColor: Colors.indigo[200],
                        radius: 20,
                        child: Icon(
                          EvaIcons.arrowIosBack,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      onTap: (){
                        Get.to(BottomNavView());
                      },
                    ),
                    Text(
                      'スタンプカード詳細',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Icon(
                      EvaIcons.minusCircleOutline,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mer キッチン',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Text(
                      '現在の獲得数30個',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
             Container(
               height: h/1.255,
               width: w,
               child: ListView(
                 children:[
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: Container(
                             height: h/3,
                             width: w,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20),
                                 image: DecorationImage(image: NetworkImage('https://www.freevector.com/uploads/vector/preview/20926/Checklist_Icon.jpg'),fit: BoxFit.cover)
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(10),
                           child: Container(
                             height: h/3,
                             width: w,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20),
                                 image: DecorationImage(image: NetworkImage('https://www.freevector.com/uploads/vector/preview/20926/Checklist_Icon.jpg'),fit: BoxFit.cover)
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [

                       Padding(
                         padding: const EdgeInsets.only(right: 8),
                         child: Text('2 / 2枚目',style: TextStyle(fontSize: 15,color: Colors.black),),
                       )

                     ],
                   ),
                   SingleChildScrollView(
                     scrollDirection: Axis.vertical,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10,bottom: 10),
                           child: Text('スタンプ獲得履歴',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                         ),
                         Container(
                           decoration: BoxDecoration(
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey,
                                   offset: Offset(0, 2), // specifies the offset of the shadow
                                   blurRadius: 4, // defines the blur radius of the shadow
                                   spreadRadius: 1, // determines the spread of the shadow
                                 ),
                               ],

                               color: Colors.white


                           ),
                           child: ListTile(
                             onTap: (){
                               Get.to(StoreprofileView());
                             },
                             title: Text('2021 / 11 / 18'),
                             dense: true,
                             trailing: Text('1 個'),

                             subtitle: Text('スタンプを獲得しました。'),

                           ),
                         ),
                         Container(
                           decoration: BoxDecoration(
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey,
                                   offset: Offset(0, 2), // specifies the offset of the shadow
                                   blurRadius: 4, // defines the blur radius of the shadow
                                   spreadRadius: 1, // determines the spread of the shadow
                                 ),
                               ],

                               color: Colors.white


                           ),
                           child: ListTile(
                             onTap: (){
                               Get.to(StoreprofileView());
                             },
                             title: Text('2021 / 11 / 17'),
                             dense: true,
                             trailing: Text('1 個'),

                             subtitle: Text('スタンプを獲得しました。'),

                           ),
                         ),
                         Container(
                           decoration: BoxDecoration(
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey,
                                   offset: Offset(0, 2), // specifies the offset of the shadow
                                   blurRadius: 4, // defines the blur radius of the shadow
                                   spreadRadius: 1, // determines the spread of the shadow
                                 ),
                               ],

                               color: Colors.white


                           ),
                           child: ListTile(
                             onTap: (){
                               Get.to(StoreprofileView());
                             },
                             title: Text('2021 / 11 / 16'),
                             dense: true,
                             trailing: Text('1 個'),

                             subtitle: Text('スタンプを獲得しました。'),

                           ),
                         ),
                         Container(
                           decoration: BoxDecoration(
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey,
                                   offset: Offset(0, 2), // specifies the offset of the shadow
                                   blurRadius: 4, // defines the blur radius of the shadow
                                   spreadRadius: 1, // determines the spread of the shadow
                                 ),
                               ],

                               color: Colors.white


                           ),
                           child: ListTile(
                             onTap: (){
                               Get.to(StoreprofileView());
                             },
                             title: Text('2021 / 11 / 15'),
                             dense: true,
                             trailing: Text('1 個'),

                             subtitle: Text('スタンプを獲得しました。'),

                           ),
                         ),
                         Container(
                           decoration: BoxDecoration(
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey,
                                   offset: Offset(0, 2), // specifies the offset of the shadow
                                   blurRadius: 4, // defines the blur radius of the shadow
                                   spreadRadius: 1, // determines the spread of the shadow
                                 ),
                               ],

                               color: Colors.white


                           ),
                           child: ListTile(
                             onTap: (){
                               Get.to(StoreprofileView());
                             },
                             title: Text('2021 / 11 / 14'),
                             dense: true,
                             trailing: Text('1 個'),

                             subtitle: Text('スタンプを獲得しました。'),

                           ),
                         ),
                         Container(
                           decoration: BoxDecoration(
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey,
                                   offset: Offset(0, 2), // specifies the offset of the shadow
                                   blurRadius: 4, // defines the blur radius of the shadow
                                   spreadRadius: 1, // determines the spread of the shadow
                                 ),
                               ],

                               color: Colors.white


                           ),
                           child: ListTile(
                             onTap: (){
                               Get.to(StoreprofileView());
                             },
                             title: Text('2021 / 11 / 13'),
                             dense: true,
                             trailing: Text('1 個'),

                             subtitle: Text('スタンプを獲得しました。'),

                           ),
                         ),

                       ],
                     ),
                   )
                 ]
               ),
               decoration: BoxDecoration(
                 color: Colors.grey[50],
                 borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
               ),

             )
            ],
          ),
        ),
      ),
    );
  }
}
