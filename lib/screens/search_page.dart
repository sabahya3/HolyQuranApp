

import 'package:flutter/material.dart';
import 'package:the_holy_quran/mainScreen.dart';
import 'package:the_holy_quran/surahContent.dart';
import 'package:the_holy_quran/tasbeeh.dart';

import 'about.dart';
import 'brain.dart';

class SearchPage extends StatelessWidget {
 String text;
SearchPage(this.text);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();

        },
      ),

          centerTitle: true,
          title: Text(Brain().getSurahContentByString(text)!=null? "سورة "+"$text":"",style: TextStyle(color: Colors.white),),
        ),
        body: ListView(
          children: [
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.blue,width: 4)),
              margin: EdgeInsets.all(10),
              child: Text(
      Brain().getSurahContentByString(text)!=null? "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم": "ِلا يوجد سورة بهذا الاسم",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),),
            Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(20),
                child: Text(Brain().getSurahContentByString(text)!=null? "${Brain().getSurahContentByString(text)}":"من فضلك ادخل اسم السورة الصحيح",
                  //"${Brain().getSurahContentByString(text)}",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),

          ],
        ),
        
      ),
    );
  }
}
