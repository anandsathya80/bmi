import 'package:flutter/material.dart';
import 'package:tugas_bmi/bmi.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),

            CircleAvatar(
              backgroundImage: AssetImage('aset/line_444477244452930.jpg'),
              maxRadius: 90,
            ),

            //new Image(image: AssetImage("aset/pro.jpg")),

            new Container(
              padding: new EdgeInsets.only(top:15.0),
              margin: EdgeInsets.all(40),
              child: Text(
                'I Made Anand Sathya',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),



            new Container(
              padding: new EdgeInsets.only(top:235.0),
              alignment: Alignment.center,
              child: RaisedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> inputBmi()),
                  );
                },
                child: Text(
                  "Back",
                ),
              ),
            )
          ],
        ),
        ),
      );
  }
}
