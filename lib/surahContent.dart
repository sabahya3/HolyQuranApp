import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:the_holy_quran/main.dart';
import 'package:the_holy_quran/mainScreen.dart';
import 'package:the_holy_quran/tasbeeh.dart';

import 'about.dart';
import 'brain.dart';

class SurahContent extends StatelessWidget {
  final int num;

  SurahContent(this.num);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'), // English, no country code
      ],
      home: SafeArea(
        child: Scaffold(
            endDrawer: Drawer(
                child: ListView(

                  children: [
                    DrawerHeader(child: Image(image: AssetImage("assets/images/qu.png"),fit: BoxFit.contain,),decoration: BoxDecoration(color: Colors.yellow.shade100),),


                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 40,right: 20,top: 5),
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue.withOpacity(0.7)),

                        child: ListTile(title:Text("سبحة الكترونية",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),) ,onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tasbeeh()));},leading: Icon(Icons.add_to_home_screen,color: Colors.white,),)),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 40,right: 20,top: 5),
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue.withOpacity(0.7)),

                        child: ListTile(title:Text("القرأن الكريم",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),) ,onTap: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainScreen()));},leading: Icon(Icons.book,color: Colors.white,),)),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 40,right: 20,top: 5),
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue.withOpacity(0.7)),

                        child: ListTile(title:Text("حول التطبيق",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),) ,onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutUs()));},leading: Icon(Icons.info,color: Colors.white,),)),




                  ],
                )
            ),

            appBar: AppBar(

              title: Text("سورة "+"${Brain().getSurahName(num)}",style: TextStyle(color: Colors.white),),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();

                },
              ),
            ),
            body: Container(
              color: Colors.blue.withOpacity(0.1),
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.blue,width: 4)),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ",
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "${Brain().getSurahContent(num)}",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )),
      ),
    );
  }
}
