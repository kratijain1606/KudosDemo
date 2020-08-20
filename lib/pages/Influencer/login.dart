import 'package:flutter/material.dart';
import 'package:kudos_ware/advertiser.dart';
import 'package:kudos_ware/pages/Influencer.dart';
import 'package:kudos_ware/home.dart';

// import 'package:kudos_ware/pages/login_signup_page.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: <Widget>[
        _showForm(context),
        // _showCircularProgress(),
      ],
    ));
  }
}

Widget _showForm(context) {
  return new Container(
      padding: EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: new Form(
          // key: _formKey,
          child: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              showLogo(),
              showEmaillInput(), showPasswordInput(),
              Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                  child: SizedBox(
                    height: 40.0,
                    child: new RaisedButton(
                      elevation: 5.0,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                      color: Colors.blue,
                      child: new Text('Login',
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdvertiserPage()));
                      },
                    ),
                  )),

              showSecondaryButton(context)
              // _isLoginForm ? signUp() : showSecondaryButton(),
            ],
          ),
        ),
      ));
}

Widget showSecondaryButton(context) {
  return Column(
    children: <Widget>[
      new FlatButton(
          child: new Text('Cancel',
              style:
                  new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          }),
    ],
  );
}

Widget showEmaillInput() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
    child: new TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: 'Enter email Address'),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value.isEmpty || !value.contains('@')) {
          return 'invalid email';
        }
        return null;
      },
      // onSaved: (value) => _email = value.trim()
    ),
  );
}

Widget showPasswordInput() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
    child: new TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: 'Enter Password here'),
      obscureText: true,
      validator: (value) {
        if (value.isEmpty || value.length <= 5) {
          return 'invalid password';
        }
        return null;
      },
      // onSaved: (value) => _password = value.trim(),
    ),
  );
}

Widget showLogo() {
  return new Hero(
    tag: 'hero',
    child: Padding(
      padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
      child: Text("Adgram",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.blue,
              fontSize: 60.0,
              height: 3.5,
              fontFamily: 'Dancing Script',
              fontWeight: FontWeight.w700)),
    ),
  );
}
