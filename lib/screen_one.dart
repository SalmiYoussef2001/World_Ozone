import 'package:flutter/material.dart';


class ScreenOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 25.0,bottom: 10), // Adds 30 pixels of padding to the left
              child: Text(
                'Hey Jacob',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Dosis',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0 ), // Adds 30 pixels of padding to the left
              child: Text(
                'Let’s see your contribution to the society',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Dosis',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25,right: 25,top: 25),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), // Add a border radius of 10.0
                  color: Color(0xFF115976),// Optional: Add a color to the container
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Good Going, Jacob',
                        style:TextStyle(
                          color: Colors.white,
                        ) ,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0), // Adds 30 pixels of padding to the left
              child: Text(
                'Things You Can Do',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }

}