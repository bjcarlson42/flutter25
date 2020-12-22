import 'package:christmas_list_flutter25/services/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginSignUpPage extends StatefulWidget {
  LoginSignUpPage({this.auth, this.onSignedIn});

  final BaseAuth auth;
  final VoidCallback onSignedIn;

  @override
  _LoginSignUpPageState createState() => _LoginSignUpPageState();
}

enum FormMode { LOGIN, SIGNUP }

class _LoginSignUpPageState extends State<LoginSignUpPage> {
  final _formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  FormMode _formMode = FormMode.LOGIN;

  bool _validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void _validateAndSubmit() async {
    if (_validateAndSave()) {
      String userId = "";
      if (_formMode == FormMode.LOGIN) {
        // log the user in
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: _email, password: _password);
          userId = userCredential.user.uid;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            _showErrorOrSuccessDialog('Not Found!',
                _email + ' cannot be found! Do you need to create an account?');
            print('No user found for that email.');
          } else if (e.code == 'wrong-password') {
            _showErrorOrSuccessDialog('Error!',
                'The password your entered for ' + _email + ' is incorrect.');
            print('Wrong password provided for that user.');
          }
        } catch (e) {
          _showErrorOrSuccessDialog('Error!', e);
          print(e);
        }
      } else {
        // create a new user
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: _email, password: _password);
          _showErrorOrSuccessDialog('Success!',
              'Please login with the username and password you just created!');
          userId = userCredential.user.uid;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            _showErrorOrSuccessDialog(
                'Weak Password!', 'Please use a stronger password.');
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            _showErrorOrSuccessDialog(
                'Error!', 'This email is already being used.');
            print('The account already exists for that email.');
          }
        } catch (e) {
          _showErrorOrSuccessDialog('Error!', e);
          print(e);
        }
      }
      if (userId.length > 0 && userId != null && _formMode == FormMode.LOGIN) {
        widget.onSignedIn();
      }
    }
  }

  void _showErrorOrSuccessDialog(String messageTitle, String messageText) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text(messageTitle),
          content: Text(messageText),
          actions: <Widget>[
            FlatButton(
              child: Text("Dismiss"),
              onPressed: () {
                if (messageTitle == "Success!") {
                  _changeFormToLogin();
                }
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _changeFormToSignUp() {
    _formKey.currentState.reset();
    setState(() {
      _formMode = FormMode.SIGNUP;
    });
  }

  void _changeFormToLogin() {
    _formKey.currentState.reset();
    setState(() {
      _formMode = FormMode.LOGIN;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Christmas List App'),
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage('tree.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildEmailInput(),
                  _buildPasswordInput(),
                  _buildLoginOrCreateBtn(),
                  _buildSwitchFromLoginToCreateBtn(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmailInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Email',
          icon: Icon(
            Icons.mail,
            color: Colors.green,
          ),
        ),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
        onSaved: (value) => _email = value.trim(),
      ),
    );
  }

  Widget _buildPasswordInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: Colors.green,
          ),
        ),
        validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
        onSaved: (value) => _password = value.trim(),
      ),
    );
  }

  Widget _buildLoginOrCreateBtn() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15.0, 0, 0),
      child: SizedBox(
        height: 40.0,
        width: MediaQuery.of(context).size.width,
        child: RaisedButton(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30.0,
            ),
          ),
          color: Colors.green[400],
          child: _formMode == FormMode.LOGIN
              ? Text(
                  'Login',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )
              : Text(
                  'Create An Account',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
          onPressed: _validateAndSubmit,
        ),
      ),
    );
  }

  Widget _buildSwitchFromLoginToCreateBtn() {
    return FlatButton(
      minWidth: MediaQuery.of(context).size.width,
      onPressed: _formMode == FormMode.LOGIN
          ? _changeFormToSignUp
          : _changeFormToLogin,
      child: _formMode == FormMode.LOGIN
          ? Text('Don\'t have an account? Create one.')
          : Text('Already Have An Account? Sign in.'),
    );
  }
}
