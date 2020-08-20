import 'package:flutter/material.dart';
import 'package:kudos_ware/services/authentication.dart';
import 'package:kudos_ware/pages/Influencer/ForgotPass.dart';

class LoginSignupPage extends StatefulWidget {
  LoginSignupPage({this.auth, this.loginCallback});

  final BaseAuth auth;
  final VoidCallback loginCallback;

  @override
  State<StatefulWidget> createState() => new _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  final _formKey = new GlobalKey<FormState>();

  String _email;
  String _password;
  String _errorMessage;

  bool _isLoginForm;
  bool _isLoading;

  // Check if form is valid before perform login or signup
  validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  // Perform login or signup
  void validateAndSubmit() async {
    setState(() {
      _errorMessage = "";
      _isLoading = true;
    });
    if (validateAndSave()) {
      String userId = "";
      try {
        if (_isLoginForm) {
          userId = await widget.auth.signIn(_email, _password);
          print('Signed in: $userId');
        } else {
          userId = await widget.auth.signUp(_email, _password);
          widget.auth.sendEmailVerification();
          _showVerifyEmailSentDialog();
          print('Signed up user: $userId');
        }
        setState(() {
          _isLoading = false;
        });

        if (userId.length > 0 && userId != null && _isLoginForm) {
          widget.loginCallback();
        }
      } catch (e) {
        print('Error: $e');
        setState(() {
          _isLoading = false;
          _errorMessage = e.message;
          _formKey.currentState.reset();
        });
      }
    }
  }

  void _showVerifyEmailSentDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Verify your account"),
          content:
              new Text("Link to verify account has been sent to your email"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Dismiss"),
              onPressed: () {
                // _changeFormToLogin();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    _errorMessage = "";
    _isLoading = false;
    _isLoginForm = true;
    super.initState();
  }

  void resetForm() {
    _formKey.currentState.reset();
    _errorMessage = "";
  }

  void toggleFormMode() {
    resetForm();
    setState(() {
      _isLoginForm = !_isLoginForm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      children: <Widget>[
        _showForm(),
        _showCircularProgress(),
      ],
    ));
  }

  Widget _showCircularProgress() {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }

  Widget _showForm() {
    return new Container(
        padding: EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: new Form(
            key: _formKey,
            child: new ListView(
              shrinkWrap: true,
              children: <Widget>[
                showLogo(),
                showEmailInput(),
                showPasswordInput(),
                showPrimaryButton(),
                _isLoginForm ? signUp() : showSecondaryButton(),
                showErrorMessage(),
              ],
            ),
          ),
        ));
  }

  Widget showErrorMessage() {
    if (_errorMessage.length > 0 && _errorMessage != null) {
      return new Text(
        _errorMessage,
        style: TextStyle(
            fontSize: 13.0,
            color: Colors.red,
            height: 1.0,
            fontWeight: FontWeight.w300),
      );
    } else {
      return new Container(
        height: 0.0,
      );
    }
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

  Widget showEmailInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: GestureDetector(
        child: new TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter Email here'),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value.isEmpty || !value.contains('@')) {
                return 'invalid email';
              }
              return null;
            },
            onSaved: (value) => _email = value.trim()),
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
        onSaved: (value) => _password = value.trim(),
      ),
    );
  }

  Widget showSecondaryButton() {
    return new FlatButton(
        child: new Text(
            _isLoginForm ? 'Create an account' : 'Have an account? Sign in',
            style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w300)),
        onPressed: toggleFormMode);
  }

  Widget showPrimaryButton() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
              child: new RaisedButton(
                elevation: 5.0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                color: Colors.blue,
                child: new Text(_isLoginForm ? 'Login' : 'Create account',
                    style: new TextStyle(fontSize: 20.0, color: Colors.white)),
                onPressed: validateAndSubmit,
              ),
            ),
          ],
        ));
  }

  Widget signUp() {
    return new Padding(
        padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: Column(children: <Widget>[
          SizedBox(
            height: 42,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.all(0),
                color: Colors.white60,
                child: new Text('Sign up ',
                    style: new TextStyle(fontSize: 20.0, color: Colors.black)),
                onPressed: toggleFormMode),
          ),
          Padding(padding: EdgeInsets.all(10)),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForgotPass()));
            },
            child: new Padding(
              padding: new EdgeInsets.all(10.0),
              child: new Text(
                "Forgot Password?",
                textAlign: TextAlign.center,
              ),
            ),
          )
        ]));
  }
}
