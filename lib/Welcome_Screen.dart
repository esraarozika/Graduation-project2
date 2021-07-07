import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

// ignore: camel_case_types
class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40.0),
            Container(
              alignment: Alignment.center,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(80.0, 100.0, 0.0, 0.0),
                    child: Image.asset('assets/images/logoonly.png'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 200.0, 0.0, 0.0),
                    child: Text('Read',
                        style: TextStyle(
                            fontSize: 55.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF5C149))),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(160.0, 200.0, 0.0, 0.0),
                    child: Text('Me',
                        style: TextStyle(
                            fontSize: 55.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF5C149))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Container(
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Color(0xff332D8C),
                color: Color(0xff332D8C),
                elevation: 7.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Login.id);
                  },
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: 40.0,
              child: Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Color(0xff332D8C),
                color: Color(0xff332D8C),
                elevation: 7.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpPage.id);
                  },
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
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
