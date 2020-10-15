import 'package:flutter/material.dart';
import 'package:friendship_calculator/CustomShapeClipper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: <Widget>[
          ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
                height: 600, decoration: BoxDecoration(color: Colors.orange[600])),
          ),
          Container(
            child: Column(children: [
              //SizedBox(height: 10.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Image(
                      height: 200,
                      width: 250,
                      image: AssetImage('assets/images/image1.jpg')),
                ),
              ),
              //SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,right: 50,left: 50,top: 10.0),
                child: Material(
                  elevation: 5.0,
                  child: TextField(
                      controller:
                          TextEditingController(text: 'Enter 10 digits'),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 13.0))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 230.0),
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.white,
                  hoverColor: Colors.blue,
                  child: Text('SEND OTP'),
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
