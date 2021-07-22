import 'package:flutter/material.dart';
import 'package:feedback_app/first.dart';

class Result extends StatefulWidget {
  final double rate;

  Result({required this.rate});

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Color getColor(number) {
    if (0.0 <= number && number <= 10.0) {
      return Colors.red;
    }
    if (11.0 <= number && number <= 20.0) {
      return Colors.yellow;
    }
    if (21.0 <= number && number <= 30.0) {
      return Colors.green;
    }
    return Colors.cyan;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Feedback Application'),
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(70.0, 0.0, 0.0, 0.0),
              child: Text(
                (() {
                  if (0.0 <= widget.rate && widget.rate <= 10.0) {
                    return 'We are sorry for your inconvenience !!!';
                  }
                  if (11.0 <= widget.rate && widget.rate <= 20.0) {
                    return 'Hope we serve you better next time !!!';
                  }
                  if (21.0 <= widget.rate && widget.rate <= 30.0) {
                    return 'We hope you come back next time !!!';
                  }
                  return "No Response !!!";
                })(),
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: getColor(widget.rate),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              '${widget.rate}',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber[900],
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.amber, // background
                onPrimary: Colors.grey[900], // foreground
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Text(
                  'RESTART',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
