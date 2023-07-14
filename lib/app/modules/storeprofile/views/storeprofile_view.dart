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
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  child: Icon(
                    EvaIcons.arrowIosBack,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                onTap: (){
                  Get.to(CarddetailesView());
                },
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '店舗プロフィール編集',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  EvaIcons.bellOutline,
                  color: Colors.black,
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
                    Text(
                      '店舗名*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
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
                    Text(
                      '代表担当者名*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
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
                    Text(
                      '店舗電話番号*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
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
                    Text(
                      '店舗住所*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
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
                    Text(
                      '店舗外観*（最大3枚まで）',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
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
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '店舗内観*（1枚〜3枚ずつ追加してください)',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
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
                    Text(
                      '料理写真*（1枚〜3枚ずつ追加してください',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
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
                    Text(
                      'メニュー写真*（1枚〜3枚ずつ追加してください)',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
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
                    Text(
                      '営業時間*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 20,
                          width: w / 2.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '10:00',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              Icon(
                                EvaIcons.arrowIosDownward,
                                size: 30,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '20:00',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              Icon(
                                EvaIcons.arrowIosDownward,
                                size: 30,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                        ),
                      ],
                    ),
                    Text(
                      'ランチ時間*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 20,
                          width: w / 2.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '11:00',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              Icon(
                                EvaIcons.arrowIosDownward,
                                size: 30,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '21:00',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),
                              Icon(
                                EvaIcons.arrowIosDownward,
                                size: 30,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                        ),
                      ],
                    ),
                    Text(
                      '定休日*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
                    ),

                    Column(
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '定休日*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                    Container(
                      height: h / 20,
                      width: w / 1.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '料理カテゴリー選択',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                          ),
                          Icon(
                            EvaIcons.arrowIosDownward,
                            size: 30,
                            color: Colors.black54,
                          )


                        ],
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54)),
                    ),
                    Text(
                      'キャッチコピー*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h / 20,
                          width: w / 2.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '¥ 1,000',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),

                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '¥ 2,000',
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  fontSize: 20,
                                )),
                              ),

                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54)),
                        ),
                      ],
                    ),
                    Text(
                      'キャッチコピー',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                          )),
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
                    Text(
                      '座席数*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: '40席',
                      ),
                    ),
                    Text(
                      '喫煙席',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                    Column(
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                    Text(
                      '駐車場*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                    Column(
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
                                Text('月')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                    Text(
                      '来店プレゼント*',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                    Column(
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
                                Text('有（最大３枚まで）')
                              ],
                            ),
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
                                Text('月')
                              ],
                            ),

                          ],
                        ),
                      ],
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
                    Text(
                      '来店プレゼント名',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'いちごクリームアイスクリーム, ジュース',
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: h/18,
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
