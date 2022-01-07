
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_holy_quran/about.dart';
import 'package:the_holy_quran/surahContent.dart';
import 'package:the_holy_quran/tasbeeh.dart';
import 'search_page.dart';

import 'brain.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 // final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          endDrawer: Drawer(
              child: ListView(
            children: [
              DrawerHeader(
                child: Image(
                  image: AssetImage("assets/images/qu.png"),
                  fit: BoxFit.contain,
                ),
                decoration: BoxDecoration(color: Colors.yellow.shade100),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 40, right: 20, top: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.withOpacity(0.7)),
                  child: ListTile(
                    title: Text(
                      "سبحة الكترونية",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Tasbeeh()));
                    },
                    leading: Icon(
                      Icons.add_to_home_screen,
                      color: Colors.white,
                    ),
                  )),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 40, right: 20, top: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue.withOpacity(0.7)),
                  child: ListTile(
                    title: Text(
                      "حول التطبيق",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AboutUs()));
                    },
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  )),
            ],
          )),
          appBar: AppBar(
            title: Text(
              "القرآن الكريم ",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: DropdownSearch(
                    dropdownSearchTextAlign: TextAlign.center,
                    autoFocusSearchBox: true,
                    popupTitle: Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Text(
                        "ابحث عن سورة",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    label: "  ابحث عن سورة           ",
                    hint: "ابحث عن سورة ....",
                    dropdownSearchBaseStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                    dropdownSearchTextAlignVertical: TextAlignVertical.center,


                    items: Brain().getSurahsNames(),
                    showSearchBox: true,
                    showSelectedItem: true,
                    mode: Mode.DIALOG,
                    onChanged: (String filter) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPage(filter)));
                    }),
              ),
              /*  Container(
                margin: EdgeInsets.only(
                    top: 33, left: 8, right: 99, bottom: 10),
                height: 100,
                width: 230,
                child: TextFormField(
                    controller: myController,
                    decoration: InputDecoration(
                      focusColor: Colors.black,
                      contentPadding: EdgeInsets.only(right: 5),
                      prefixIcon: Icon(Icons.search,color: Colors.black,size: 25,),
                      alignLabelWithHint: false,
                      hintText: " ابحث عن سورة..   ",
                      hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                    )),
              ),
              Container(

                child: TextButton(
                  child: Text("بحث",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SearchPage(myController.text)));

                    },
                  ),
                margin: EdgeInsets.only(
                  right: 10,
                  top: 32.5,

                ),
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black, width: 3)),
              ),*/
              Container(
                margin: EdgeInsets.only(top: 100),
                child: ListView.builder(
                    itemCount: Brain().numOfItems(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            height: 80,
                            margin:
                                EdgeInsets.only(top: 30, left: 30, right: 30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blue.withOpacity(0.7)),
                            child: ListTile(
                              title: Text(
                                "سورة " + Brain().getSurahName(index),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.white),
                              ),
                              leading: Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                child: Text(
                                  "${Brain().getSurahNum(index)}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff271F1C),
                                      fontSize: 22),
                                ),
                              ),
                              trailing: Text(""),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return SurahContent(index);
                                }));
                              },
                            ),
                          ),
                          Divider(
                            height: 5,
                            indent: 20,
                            endIndent: 20,
                          )
                        ],
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
