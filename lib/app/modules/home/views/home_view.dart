import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../carddetailes/views/carddetailes_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController _controller = Get.put(HomeController());

   HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(

        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding:  EdgeInsets.only(left:8,right:8,top: 10,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: w / 1.3,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '北海道, 札幌市',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(16.0),
                      ),
                    ),
                  ),
                ),

                Icon(EvaIcons.options,color: Colors.black26,),
                Icon(EvaIcons.heartOutline,color: Colors.red[400],)



              ],
            ),
          )
        ],
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
        body: ListView(
          children: [
            Container(
              height: h/20,
              width: w,
              decoration: BoxDecoration(

                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.amber,
                      Colors.white

                ])
              ),
              child: Center(child: Text('2022年 5月 26日（木）',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.black),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GetBuilder<HomeController>(
                    builder: (_) => DatePicker(
                      _.selectedValue,
                      initialSelectedDate: _.selectedValue,
                      selectionColor: Colors.amber,
                      selectedTextColor: Colors.white,
                      onDateChange: _.setSelectedDate,
                      locale: 'ja_JP',

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(CarddetailesView());

                    },
                    child: Padding(
                      padding:  EdgeInsets.fromLTRB(0, 8,0, 0),
                      child: Container(
                        height: h/2.3,
                        width: w,

                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 2), // specifies the offset of the shadow
                                blurRadius: 4, // defines the blur radius of the shadow
                                spreadRadius: 1, // determines the spread of the shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white


                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h / 5,
                              width: w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage('https://media.istockphoto.com/id/1313694706/photo/attractive-young-senior-asian-female-citizen-happy-face-with-nurse-at-home-in-morning-in.jpg?s=612x612&w=0&k=20&c=JZYOJacXGhhj_J_oV_rERNbS2XO4tks3BgcDckscWVw='),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),


                            Padding(
                              padding:  EdgeInsets.only(top: 5,left: 10,right: 10),
                              child: Text('介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color:Colors.black,
                                    )
                                ),

                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.only(top: 5,left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: w/2.5,
                                    child: Center(
                                      child: Text(
                                        '介護付き有料老人ホーム',
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.amber
                                            )
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.amber[200],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  Text('¥ 6,000',style: TextStyle(fontSize:
                                  20),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                              child: Text('5月 31日（水）08 : 00 ~ 17 : 00',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                              child: Text('北海道札幌市東雲町3丁目916番地17号',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                              child: Text('交通費 300円',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('住宅型有料老人ホームひまわり倶楽部',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey),),
                                  Icon(EvaIcons.heartOutline,color: Colors.grey,)
                                ],
                              ),
                            ),


                          ],
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(0, 8,0, 0),
                    child: Container(
                      height: h/2.3,
                      width: w,

                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2), // specifies the offset of the shadow
                              blurRadius: 4, // defines the blur radius of the shadow
                              spreadRadius: 1, // determines the spread of the shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white


                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: h / 5,
                            width: w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: NetworkImage('https://media.istockphoto.com/id/1313694706/photo/attractive-young-senior-asian-female-citizen-happy-face-with-nurse-at-home-in-morning-in.jpg?s=612x612&w=0&k=20&c=JZYOJacXGhhj_J_oV_rERNbS2XO4tks3BgcDckscWVw='),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),


                          Padding(
                            padding:  EdgeInsets.only(top: 5,left: 10,right: 10),
                            child: Text('介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color:Colors.black,
                                  )
                              ),

                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.only(top: 5,left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  width: w/2.5,
                                  child: Center(
                                    child: Text(
                                      '介護付き有料老人ホーム',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.amber
                                          )
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.amber[200],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                Text('¥ 6,000',style: TextStyle(fontSize:
                                20),)
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                            child: Text('5月 31日（水）08 : 00 ~ 17 : 00',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                            child: Text('北海道札幌市東雲町3丁目916番地17号',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                            child: Text('交通費 300円',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5,left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('住宅型有料老人ホームひまわり倶楽部',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey),),
                                Icon(EvaIcons.heartOutline,color: Colors.grey,)
                              ],
                            ),
                          ),


                        ],
                      ),

                    ),
                  )

                ],
              ),
            ),
          ]
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          onPressed: (){},
        child: Icon(EvaIcons.mapOutline),),
      ),
    );
  }
}
