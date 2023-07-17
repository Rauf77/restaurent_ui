import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurent_ui/app/modules/carddetailes/views/carddetailes_view.dart';

import '../controllers/storeprofile_controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreprofileView extends GetView<StoreprofileController> {
  StoreprofileView({Key? key}) : super(key: key);
  final StoreprofileController _checkboxController =
      Get.put(StoreprofileController());
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
          appBar: AppBar(
            elevation: 1,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: CircleAvatar(
                    backgroundColor: Colors.grey[100],
                    child: Icon(EvaIcons.arrowIosBack,color: Colors.black,)),
                onTap: () {
                  Get.to(CarddetailesView());
                },
              ),
            ),
            title: Text(
              '店舗プロフィール編集',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 15,right: 10,bottom: 10),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  clipBehavior: Clip.antiAlias,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red[900],
                      radius: 7,
                      child:Text(
                        '99',
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      )
                    ),
                    Icon(
                      EvaIcons.bellOutline,
                      color: Colors.black87,
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '店舗名',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 15,
                          )),
                        ),
                        TextSpan(
                          text: '*',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                            fontSize: 20,
                          )),
                        )
                      ]),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mer キッチン',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '代表担当者名',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '*',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        )
                      ]),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '林田　絵梨花',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '店舗電話番号',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '*',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        )
                      ]),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '123 - 4567 8910',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '店舗住所',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '*',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        )
                      ]),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '大分県豊後高田市払田791-13',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: h / 4,
                      width: w,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.blogs.es/b4dd5c/maps/1366_2000.png'),
                              fit: BoxFit.cover)),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '店舗外観',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),
                        TextSpan(
                          text: '(最大3枚まで)',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              )),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/id/458538003/photo/facade-of-traditional-vietnam-restaurant.jpg?s=612x612&w=0&k=20&c=44Oj9fJECFHMIpMGa02qR41npakN55DRiTmE4cM9oTw='),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/id/458538003/photo/facade-of-traditional-vietnam-restaurant.jpg?s=612x612&w=0&k=20&c=44Oj9fJECFHMIpMGa02qR41npakN55DRiTmE4cM9oTw='),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Icon(EvaIcons.imageOutline,color: Colors.grey,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                              ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '店舗内観',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),
                        TextSpan(
                          text: '(1枚〜3枚ずつ追加してください)',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              )),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://thumbs.dreamstime.com/b/round-dining-table-chinese-restaurant-china-round-dining-table-many-chairs-chinese-restaurant-china-128551787.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://thumbs.dreamstime.com/b/round-dining-table-chinese-restaurant-china-round-dining-table-many-chairs-chinese-restaurant-china-128551787.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://thumbs.dreamstime.com/b/round-dining-table-chinese-restaurant-china-round-dining-table-many-chairs-chinese-restaurant-china-128551787.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '料理写真',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),
                        TextSpan(
                          text: '(1枚〜3枚ずつ追加してください)',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              )),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTl1_RQICy2btFl4RHZYnJvtii0Z_UjBaM-RXgNu6SDQ1PFekanXCUTZtTIPmJUSKN3aM&usqp=CAU'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWepMCLS-PHf2wHwNpH6ceUsVB1VQaas1105rZOZOurpXMOvwAtTpVolHFZ7lLCAJv6VI&usqp=CAU'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://st3.depositphotos.com/11670776/18831/i/600/depositphotos_188312020-stock-photo-horsemeat-steak-with-potatoes-and.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'メニュー写真',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),
                        TextSpan(
                          text: '(1枚〜3枚ずつ追加してください)',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 15,
                              )),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://c8.alamy.com/comp/E5CA6A/luxury-vegetarian-breakfast-menu-board-outside-the-market-cross-cafe-E5CA6A.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1529270296466-b09d5f5c2bab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVudSUyMHJlc3RhdXJhbnR8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ53VDwVxehR52nLDBkkBwTYN0IP2lVv3TaFfVPDX6mFLHDoZdNgSFLEjohGPfOi8uQao&usqp=CAU'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '営業時間',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 20,
                          width: w / 2.5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              elevation: 8,
                              isExpanded: true,
                              isDense: true,
                              hint: Text(
                                '10:00',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              icon: Icon(EvaIcons.arrowIosDownward),
                              items: items.map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  // Handle the selected value
                                  // newValue contains the selected item
                                }
                              },
                            ),
                          ),
                        ),
                        Text(
                          '~',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.black54,
                            fontSize: 70,
                          )),
                        ),
                        Container(
                          height: h / 20,
                          width: w / 2.5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              elevation: 8,
                              isExpanded: true,
                              isDense: true,
                              hint: Text(
                                '20:00',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              icon: Icon(EvaIcons.arrowIosDownward),
                              items: items.map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  // Handle the selected value
                                  // newValue contains the selected item
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'ランチ時間',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 20,
                          width: w / 2.5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              elevation: 8,
                              isExpanded: true,
                              isDense: true,
                              hint: Text(
                                '11:00',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              icon: Icon(EvaIcons.arrowIosDownward),
                              items: items.map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  // Handle the selected value
                                  // newValue contains the selected item
                                }
                              },
                            ),
                          ),
                        ),
                        Text(
                          '~',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.black54,
                            fontSize: 70,
                          )),
                        ),
                        Container(
                          height: h / 20,
                          width: w / 2.5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              elevation: 8,
                              isExpanded: true,
                              isDense: true,
                              hint: Text(
                                '21:00',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              icon: Icon(EvaIcons.arrowIosDownward),
                              items: items.map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  // Handle the selected value
                                  // newValue contains the selected item
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '定休日',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked.value,
                                    onChanged: (value) {
                                      _checkboxController.toggleCheckbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '月',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked1.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle1Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '火',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked2.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle2Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '水',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked3.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle3Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '木',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(

                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked4.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle4Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),

                                ),
                                Text(
                                  '金',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked5.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle5Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '土',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked6.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle6Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '日',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),

                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked7.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle7Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '祝',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '料理カテゴリー',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    Container(
                      height: h / 20,
                      width: w / 1.5,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButton<String>(
                          elevation: 8,
                          isExpanded: true,
                          isDense: true,
                          hint: Text(
                            '料理カテゴリー選択',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              fontSize: 20,
                            )),
                          ),
                          icon: Icon(EvaIcons.arrowIosDownward),
                          items: items.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              // Handle the selected value
                              // newValue contains the selected item
                            }
                          },
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '予算',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 20,
                          width: w / 2.5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              elevation: 8,
                              isExpanded: true,
                              isDense: true,
                              hint: Text(
                                '¥ 1,000',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              icon: Icon(
                                EvaIcons.arrowIosDownward,
                                color: Colors.white,
                              ),
                              items: items.map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  // Handle the selected value
                                  // newValue contains the selected item
                                }
                              },
                            ),
                          ),
                        ),
                        Text(
                          '~',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.black54,
                            fontSize: 70,
                          )),
                        ),
                        Container(
                          height: h / 20,
                          width: w / 2.5,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton<String>(
                              elevation: 8,
                              isExpanded: true,
                              isDense: true,
                              hint: Text(
                                '¥ 2,000',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              icon: Icon(
                                EvaIcons.arrowIosDownward,
                                color: Colors.white,
                              ),
                              items: items.map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  // Handle the selected value
                                  // newValue contains the selected item
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'キャッチコピー',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '美味しい！リーズナブルなオムライスランチ！',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '座席数',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '40席',
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '喫煙席',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked8.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle8Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '有',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked9.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle9Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '無',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '駐車場',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Obx(
                                      () => Checkbox(
                                    value: _checkboxController.isChecked10.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle10Checkbox();
                                    },
                                    activeColor:
                                    _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '有',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                      () => Checkbox(
                                    value: _checkboxController.isChecked11.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle11Checkbox();
                                    },
                                    activeColor:
                                    _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '無',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '来店プレゼント',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked12.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle12Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '有（最大３枚まで)',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Obx(
                                  () => Checkbox(
                                    value: _checkboxController.isChecked13.value,
                                    onChanged: (value) {
                                      _checkboxController.toggle13Checkbox();
                                    },
                                    activeColor:
                                        _checkboxController.checkboxColor.value,
                                  ),
                                ),
                                Text(
                                  '無',
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/id/1148364081/photo/front-view-of-real-edible-ice-cream-cone-with-3-different-scoops-of-ice-cream-isolated-on.jpg?s=612x612&w=0&k=20&c=m51YpJ0bZ0aBecUrB413RWMDqEC1mjxnXPO7K6t4CfE='),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://m.media-amazon.com/images/I/71tTYGmAMGL.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: h / 7,
                          width: w / 3.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                EvaIcons.close,
                                color: Colors.white,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.shutterstock.com/shutterstock/photos/1666349866/display_1500/stock-photo-st-petersburg-russia-february-up-drink-on-white-isolated-background-with-water-drops-1666349866.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '来店プレゼント名',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 15,
                              )),
                        ),
                        TextSpan(
                          text: '* ',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 20,
                              )),
                        ),

                      ]),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'いちごクリームアイスクリーム, ジュース',
                      ),
                    ),
                    SizedBox(
                      height: h/15,
                    ),
                    Container(
                      height: h / 18,
                      width: w,
                      color: Colors.red[200],
                      child: Center(
                        child: Text(
                          '編集を保存',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 20,
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
