import 'package:flutter/material.dart';
import 'package:studyjamcode/page2.dart';

class HelloFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 18.0, color: Colors.white),
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
        child: Text("Page 1",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)),
      ),
    );
  }
}
