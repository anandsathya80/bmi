import 'package:flutter/material.dart';
import 'dart:math';

class HasilBmi extends StatelessWidget {

  HasilBmi({
    @required this .tinggi,
    @required this .berat,
    @required this .nama,
    @required this .tanggal,
    @required this .bulan,
    @required this .tahun,
    @required this .jk,
});

  final int tinggi;
  final int berat;
  final String nama;
  final int tanggal;
  final int bulan;
  final int tahun;
  final String jk;

  @override
  Widget build(BuildContext context) {
    double bmi = berat/pow(tinggi/100,2);
    String cBMI;
    if (bmi>=28) cBMI=" You Are Obese";
    else if (bmi>=23) cBMI="You Are Overweight";
    else if (bmi>=17.5) cBMI="You Are Fit";
    else cBMI="You Are Underweight";

    DateTime currentDate = DateTime.now();
    int umur;
    umur =  currentDate.year-tahun;
    int bulan1 = currentDate.month;
    int bulan2 = bulan;
    if (bulan2>bulan1){
      umur--;
    }else if(bulan1==bulan2){
      int hari1 = currentDate.day;
      int hari2 = tanggal;
      if(hari2>hari1){
        umur--;
      }
    }
    String umur_user= '$umur';



    return Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        padding: new EdgeInsets.only(top: 40.0 , left: 30.0 ),
        child: Column(
          children: <Widget>[

            new Image(image: AssetImage("aset/man.png"), width: 120 ,),

            SizedBox(
              height: 20,
            ),

            new Container(

              child: Column(
                children: <Widget>[
                  Text(
                    'Name: $nama',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Text(
                    'Gender: $jk',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Text(
                    'Age: $umur_user years',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
                 cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
               // color: Colors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                //color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Normal BMI Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,

              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                //color: Colors.white,
              ),
            ),

            new RaisedButton(
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  '/inputBmi'
                );
              },
              child: Text(
                "Retry",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
