
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'mainScreen.dart';

class Tasbeeh extends StatefulWidget {
  const Tasbeeh({Key key}) : super(key: key);

  @override
  _TasbeehState createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {
  String txt = "0";
  String txt2="0";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.blue.shade300.withOpacity(0.5),
      appBar: AppBar(
        centerTitle: true,
        title: Text("سبح الله"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();

          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.green,
                    Colors.white,
                    Colors.green,
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: 3)),
            child: Text(
              txt,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Tooltip(
                message: "سبح الله",
              margin: EdgeInsets.only(bottom: 80),
                textStyle: TextStyle(fontSize: 20,color: Colors.white),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  border: Border.all(color: Colors.black,width: 3),
                  borderRadius: BorderRadius.circular(8),

                ),
                child: Container(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75)
                    ),
                    splashColor: Colors.purple.withOpacity(0.5),

                    onPressed: () {
                      setState(() {
                        int.parse(txt) == 100000?txt="0": txt = (int.parse(txt) + 1).toString();
                       int.parse(txt2)==9000?txt2="0": txt2=(int.parse(txt2) + 1).toString();
                      });
                    },
                  ),
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 4, top: 30),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 3),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.blue,
                          Colors.white,
                          Colors.blue,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(75)),

                ),
              ),
              Tooltip(
                message: "اعادة العداد الي 0",
                margin: EdgeInsets.only(bottom: 80),
                textStyle: TextStyle(fontSize: 20,color: Colors.white),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 5),
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(

                  width: 50,
                  margin: EdgeInsets.only(bottom: 70, right: 30),
                  height: 50,
                  decoration: BoxDecoration(
border: Border.all(color: Colors.black,width: 5),
                color: Colors.red,
                      borderRadius: BorderRadius.circular(35)),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)
                    ),
                    splashColor: Colors.purple,

                    onPressed: () {
                      setState(() {
                        txt = "0";

                      });
                    },
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Text("عدد التسبيح الكلي = "+txt2,style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
        ],

      ),
    );
  }
}
