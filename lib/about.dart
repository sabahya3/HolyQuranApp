import 'package:flutter/material.dart';
import 'package:the_holy_quran/tasbeeh.dart';

import 'mainScreen.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key key}) : super(key: key);

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

                    child: ListTile(title:Text("سبحة الكترونية",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),) ,onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tasbeeh()));},leading: Icon(Icons.add_to_home_screen,color: Colors.white,),)),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 40,right: 20,top: 5),
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue.withOpacity(0.7)),

                    child: ListTile(title:Text("القرأن الكريم",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),) ,onTap: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainScreen()));},leading: Icon(Icons.book,color: Colors.white,),)),





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

        title: Text("نسألكم الدعاء"),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.all(20),
          child: Text(
            '''
          هذا التطبيق صدقة جارية علي روح كلا من
           -الدكتورة ياسمين محمد زين العابدين 
           والمرحوم متولي الشحات البهوتي.
           والمرحوم عبدالمنعم أحمد العايدي.
           والمرحومة سعاد عوض البهوتي.
           غفر الله لهم جميعا نسألكم الدعاء وقراءة الفاتحة لهم ولجميع موتي المسلمين.
          
          '''  ,style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),


          )

    );
  }
}
