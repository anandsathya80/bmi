import 'package:flutter/material.dart';
import 'package:tugas_bmi/about.dart';
import 'package:tugas_bmi/about.dart';
import 'package:tugas_bmi/hasil.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';


class inputBmi extends StatefulWidget {
  @override
  _inputBmiState createState() => _inputBmiState();
}


class _inputBmiState extends State<inputBmi> {

  String nama='';
  int tanggal = 0;
  int bulan = 0;
  int tahun = 0;
  String jk="";
  final focus = FocusNode();




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,


      body: new ListView(
        children: <Widget>[
          new Container(

             padding: new EdgeInsets.all(15.0),
            child: new Column(
              children: <Widget>[

                new Image(image: AssetImage("aset/blog.png"),width: 100,),

                SizedBox(
                  height: 20,
                ),


                Text('Hallo,let me know about you',
                  style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold ),

                ),

                SizedBox(
                  height: 20,
                ),

                new Container(
                  child: new TextField(
                    onChanged: (txt){
                      setState(() {
                        nama=txt;
                      });
                    },
                    decoration: new InputDecoration(
                        hintText: "Full Name",

                        fillColor: Colors.white,
                        filled: true,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                        )
                    ),
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(15.0),),

                new Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(child:  new TextField(
                        onChanged: (txt){
                          setState(() {
                            tanggal = int.parse(txt);

                          });
                        },
                        keyboardType: TextInputType.number,
                        decoration: new InputDecoration(
                            hintText: "Date",
                            fillColor: Colors.white,
                            filled: true,
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                            )
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: new TextField(
                        onChanged: (txt){
                          setState(() {
                            bulan = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,

                        decoration: new InputDecoration(
                            hintText: "Month",
                            fillColor: Colors.white,
                            filled: true,
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0)
                            )
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: new TextField(
                        onChanged: (txt){
                          setState(() {
                            tahun = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,

                        decoration: new InputDecoration(
                            hintText: "Year",
                            fillColor: Colors.white,
                            filled: true,
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0)
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                new Padding(padding: new EdgeInsets.all(15.0),),

                new Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: new Row(
                    children: <Widget>[
                      Expanded(child:  new RadioListTile(
                        value: "Female",
                        title: new Text("Female" , style:
                        TextStyle(fontSize: 29, ),),
                        groupValue: jk,
                        onChanged: (val){
                          setState(() {
                            jk = val;
                          });
                        },
                      ),
                      ),
                      Expanded(child: new RadioListTile(
                        value: "Male",
                        title: new Text("Male" , style:
                        TextStyle(fontSize: 29, ),),
                        groupValue: jk,
                        onChanged: (val){
                          setState(() {
                            jk = val;
                          });
                        },
                      ),
                      )
                    ],
                  ),
                ),


                new Padding(padding: new EdgeInsets.all(15.0),),

                new Container(
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context)=> InputBmi2(nama: nama, jk: jk, bulan: bulan, tanggal: tanggal, tahun: tahun,)),
                      );
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 50.0)),
                new Container(
                  child: IconButton(
                    icon: new Icon(Icons.info,size: 40,),
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> AboutPage()),
                      );
                    },
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




class InputBmi2 extends StatefulWidget {

  String nama='';
  int tanggal = 0;
  int bulan = 0;
  int tahun = 0;
  String jk="";

  InputBmi2({this.nama , this.tanggal, this.bulan, this.tahun, this.jk});


  @override
  _InputBmi2State createState() => _InputBmi2State();
}

class _InputBmi2State extends State<InputBmi2> {
  int tinggi = 0;
  int berat = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(15.0),
            child: new Column(
              children: <Widget>[
                new Image(image: AssetImage("aset/weight.png"), width: 100 ,),

                SizedBox(
                  height: 60,
                ),


                Text('Lets check your health',
                  style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold ),

                ),

                SizedBox(
                  height: 20,
                ),

                new Container(
                  padding: new EdgeInsets.all(15.0),
                  child:   new Row(
                    children: <Widget>[

                      Expanded(child: new TextField(
                        onChanged: (txt){
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,

                        textAlign: TextAlign.center,
                        decoration: new InputDecoration(
                            hintText: "Height",
                            fillColor: Colors.white,
                            filled: true,
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0)
                            )
                        ),
                      ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      Expanded(child: new TextField(
                        onChanged: (txt){
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,

                        textAlign: TextAlign.center,
                        decoration: new InputDecoration(
                            hintText: "Weight",
                            fillColor: Colors.white,
                            filled: true,
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0)
                            )
                        ),
                      ),

                      ),


                    ],
                  ),
                ),

                SizedBox(
                  height: 250,
                ),
                new Container(
                  padding: new EdgeInsets.all(15.0),
                  child: new Row(
                    children: <Widget>[
                      Expanded(child: new RaisedButton(
                        onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> inputBmi()),
                          );
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),

                      Expanded(child: new RaisedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> HasilBmi(nama: widget.nama ,tanggal: widget.tanggal, bulan: widget.bulan, tahun: widget.tahun, jk: widget.jk, tinggi: tinggi, berat: berat, )),
                          );
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

