import 'package:flutter/material.dart';
import 'package:studyjamcode/helloflutter.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(decoration: BoxDecoration(color:Colors.blueAccent),
              accountName: Text("Mohamed"),
              accountEmail: Text("mohamed@gmail.com"),
              currentAccountPicture:Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill, image: AssetImage("image/1234.jpg"))),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new HelloFlutter()));
              },
              child: Text("Page 1"),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => new Page2()));
              },
              child: Text("Page 2"),
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Page 2",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
