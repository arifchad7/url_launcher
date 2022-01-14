import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  launch('tel:+8801684137262');
                },child:Text("Make A Call"),

              ),
              ElevatedButton(
                onPressed: (){
                  launch('sms:+8801684137262?body=$TextInputType.name',);
                },child: Text("Send A SMS"),
              ),
              ElevatedButton(
                onPressed: (){
                  launch('mailto:arifchad7@gmail.com?subject=This is Subject Title&body=This is Body of Email');
                },child: Text("Send A Email"),
              ),
              ElevatedButton(
                onPressed: (){
                  launch('https://udc.bashtoilup.com/');
                },child: Text("Open a URL"),
              ),
            ],
          ),
        )
    );
  }
}