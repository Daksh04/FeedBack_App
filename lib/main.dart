import 'package:flutter/material.dart';
import 'package:feedback_app/first.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    // routes: {
    //   '/second' : (context) => SecondScreen(rate: ),
    // },
  ));
}

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Feedback Application'),
      centerTitle: true,
      backgroundColor: Colors.cyan[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 0.0),
            child: Text(
              'Your FeedBack will help us to Improve !!!',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.cyan[800],
              ),
            ),
            ),
          SizedBox(height: 50.0),
          ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,MaterialPageRoute(
                builder: (context) => FirstScreen()
              )
            );
          },
          style: ElevatedButton.styleFrom(
                primary: Colors.pink, // background
                onPrimary: Colors.white, // foreground
          ),  
          child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Text('Start',
                style: TextStyle(
                fontSize: 27.0,
                ),
                ),
          ),
        ),
        ],
      ),
    );
  }
}

//earlier stful when testing for rating as it was dynamic
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
