import 'package:flutter/material.dart';
import 'package:lesson1_Creative/model/user_record.dart';
import 'package:lesson1_Creative/screen/book_screen.dart';
import 'package:lesson1_Creative/screen/home_screen.dart';

class StartScreen extends StatefulWidget {
  static const routeName = '/startScreen';
  @override
  State<StatefulWidget> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  _Controller con;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String error;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ebook Reader',
          style: TextStyle(
            color: Colors.greenAccent[700],
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: Form(
        key: formKey, //here we attach the form key
        child: SingleChildScrollView(
          //mnust make this child scrollview since a keyboard popup may cause a rendering error
          child: Column(
            children: [
              Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.greenAccent[700],
                  fontFamily: 'Roboto',
                ),
              ),
              error == null //conditional if statement
                  ? SizedBox(
                      //if
                      height: 1.0,
                    )
                  : Text(
                      //else
                      error,
                      style: TextStyle(fontSize: 16.0, color: Colors.red),
                    ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Email',
                ),
                keyboardType:
                    TextInputType.emailAddress, //shows @ sign in the keyboard layout
                autocorrect: false, // no autocorrect on emails
                validator: con.validateEmail, // user defined function on the controller
                onSaved: con.saveEmail, //saving our email after entering
              ),
              TextFormField(
                decoration:
                    InputDecoration(icon: Icon(Icons.security), hintText: 'Password'),
                obscureText: true, //so password is not show
                autocorrect: false,
                validator: con.validatePassword,
                onSaved: con.savePassword, //refer to email
              ),
              RaisedButton(
                  onPressed: con.signIn,
                  child: Text('Sign in', style: Theme.of(context).textTheme.headline5))
            ],
          ),
        ),
      ), // for each form we need to add a key, each key has specific requirements
    );
  }
}

class _Controller {
  _StartScreenState state;
  _Controller(this.state);
  UserRecord userRecord = UserRecord();

  void signIn() {
    if (!state.formKey.currentState.validate()) return;
    //each validate function in the forms will be called to validate all data
    // if it returns false, we cannot proceed.
    state.formKey.currentState.save(); //otherwise, save all of the data that was entered
    //here, all save functions on the form will be called

    // here, we will look up our fake database if it matches
    var user = UserRecord.fakeDB.firstWhere(
        (element) =>
            element.email == userRecord.email && element.password == userRecord.password,
        orElse: () => null);

    if (user == null) {
      state.render(() => state.error = 'not valid user credential');
    } else {
      state.render(() => state.error = null); // to clear error message upon signout
      Navigator.pushNamed(state.context, HomeScreen.routeName,
          arguments: user); //pass the user record into the argument
    }
  }

  String validateEmail(String value) {
    //usually, for email validation, we will use regular expressions, not something so simple as we have here
    if (value.contains('.') && value.contains('@')) return null;
    return 'not a valid email';
  }

  String validatePassword(String value) {
    if (value.length < 6) return 'too short';
    return null;
  }

  void saveEmail(String value) {
    userRecord.email = value;
  }

  void savePassword(String value) {
    userRecord.password = value;
  }
}
