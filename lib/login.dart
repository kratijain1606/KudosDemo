import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authorization.dart';
import 'advertiser.dart';

// import ''
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // var _email = new TextFormField();
  // bool email = true;
  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  final _formKey = GlobalKey<FormState>();
  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    await Provider.of<Authentication>(context, listen: false)
        .signUp(_authData['email'], _authData['password']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(80, 70, 60, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Adgram",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 60.0,
                    height: 3.5,
                    fontFamily: 'Dancing Script',
                    fontWeight: FontWeight.w700)),
            // SizedBox(height: 48.0),
            // Text("Donate to Fight!"),
            // email ? _email : _no,
            Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Email here'),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value.isEmpty || !value.contains('@')) {
                              return 'invalid email';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _authData['email'] = value;
                          }),
                      Padding(padding: EdgeInsets.fromLTRB(30, 30, 30, 10)),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Password here'),
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty || value.length <= 5) {
                            return 'invalid password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _authData['password'] = value;
                        },
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(30, 30, 30, 10)),
                      SizedBox(
                        width: 125,
                        height: 42,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(12),
                          color: Colors.blue,
                          onPressed: () {
                            // if (_formKey.currentState.validate()) {
                            //   Scaffold.of(context).showSnackBar(
                            //       SnackBar(content: Text('Processing Data')));
                            // }
                          },
                          child: Text('Login'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
                      SizedBox(
                        width: 125,
                        height: 42,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.all(0),
                          color: Colors.white60,
                          onPressed: () {
                            _submit();
                            // if (_formKey.currentState.validate()) {
                            //   Scaffold.of(context).showSnackBar(
                            //       SnackBar(content: Text('Processing Data')));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AdvertiserPage()));
                          },
                          child: Text('Sign Up'),
                        ),
                      ),
                      Text("Forgot Password")
                    ],
                  ),
                ))
          ]),
    ));
  }
}

// void signIn() {
//   final formState = _formKey.currentState;
//   if (formState.validate()) {

//   }
// }
