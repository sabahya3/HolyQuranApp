


import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:the_holy_quran/mainScreen.dart';
import 'package:the_holy_quran/surahContent.dart';
import 'brain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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


      theme: ThemeData(


      ),
      home: MyHomePage(title: 'القرآن الكريم'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("القرآن الكريم"),
        centerTitle:true ,
        backgroundColor: Colors.teal,
      ),
      body: SplashScreen(
        backgroundColor: Colors.white,
       seconds: 2,
        image: Image.asset("assets/images/qu.png"),
        photoSize: 180,
        loadingText: Text("اذكر الله",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        navigateAfterSeconds: MainScreen(),

      ),
    );
  }
}
