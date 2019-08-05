import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<LoginApp> {
  final TextEditingController _usercontroller = new TextEditingController();
  final TextEditingController _passwordcontroller = new TextEditingController();
  String Welcome;

  void _erase() {
    setState(() {
      _usercontroller.clear();
      _passwordcontroller.clear();
    });
  }

  void _show() {
    setState(() {
      if (_usercontroller.text.isNotEmpty &&
          _passwordcontroller.text.isNotEmpty) {
        Welcome = _usercontroller.text;
      } else
        Welcome = "Nothing";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: new Text("Login"), centerTitle: true),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            //Images Profile
            new Image.asset(
              'images/login.png',
              width: 90.0,
              height: 90.0,

            ),

            //Form
            new Container(
              // alignment: Alignment(400, 200)
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _usercontroller,
                    decoration: new InputDecoration(
                        hintText: 'Username', icon: new Icon(Icons.person)),
                  ),
                  new TextField(
                    controller: _passwordcontroller,
                    decoration: new InputDecoration(
                        hintText: 'Password', icon: new Icon(Icons.lock)),
                    obscureText: true,
                  ),
                  new Padding(padding: new EdgeInsets.all(10.6)),
                  new Center(
                      child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: new RaisedButton(
                          onPressed: _show,
                          color: Colors.red,
                          child: new Text(
                            "Login",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(left: 160),
                        child: new RaisedButton(
                          onPressed: _erase,
                          color: Colors.red,
                          child: new Text(
                            "Clear",
                            style: new TextStyle(
                                color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
            new Padding(padding: const EdgeInsets.all(20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Welocome $Welcome !!!YOU ARE LOGGED IN",
                  style: TextStyle(
                      color: Colors.limeAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
