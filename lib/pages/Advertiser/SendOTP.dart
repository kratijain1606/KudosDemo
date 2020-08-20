import 'package:flutter/material.dart';
import 'package:kudos_ware/pages/Advertiser/ForgotPass.dart';
import 'chngepass.dart';
// import 'package:kudosdemo/pages/Advertiser/ChangePass.dart';
import 'ChangePass.dart';

class SendOTP extends StatefulWidget {
  @override
  _SendOTPState createState() => _SendOTPState();
}

class _SendOTPState extends State<SendOTP> {
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
              showEmaillInput(),
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
                                builder: (context) => ChngePass()));
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
                context, MaterialPageRoute(builder: (context) => ForgotPass()));
          }),
    ],
  );
}

Widget showEmaillInput() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
    child: new TextFormField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), hintText: 'Enter OTP'),
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
