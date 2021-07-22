import 'package:flutter/material.dart';
import 'package:feedback_app/second.dart';

class FirstScreen extends StatefulWidget {

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Feedback Application'),
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Q1. How much did you like the App?',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.cyan[800],
              ),
            ),
            SizedBox(height: 10.0),
            Slider(
              value: rating,
              onChanged: (newRating) {
                setState(() => rating = newRating);
                //print(rating);
              },
              min: 0.0,
              max: 5.0,
              divisions: 5,
              label: rating.round().toString(),
              activeColor: Colors.greenAccent,
              inactiveColor: Colors.blue,
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              color: Colors.blue[50],
              child: Text(
                'Rating: $rating',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan[800],
                ),
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen(rate: rating)));
              },
              //style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.pink));
              //foreground & background
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan[700], // background
                onPrimary: Colors.white, // foreground
              ),
              icon: Icon(
                Icons.arrow_right,
                size: 25.0,
              ),
              label: Text(
                'NEXT',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
