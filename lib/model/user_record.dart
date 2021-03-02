import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserRecord {
  String email;
  String password;
  String name;

  UserRecord({
    this.email = '',
    this.password = '',
    this.name = '',
  }) {
    //body of constructor
    // languages = {}; //empty map as default
    // Language.values.forEach((e) => languages[e] = false); //set all to false
  }

  UserRecord.clone(UserRecord user) {
    this.email = user.email;
    this.password = user.password;
    this.name = user.name;

    // this.classification = user.classification;
    // this.major = user.major;
    // this.languages = {}; //how to make deep copy of a map data structure
    // Language.values.forEach((e) => this.languages[e] = user.languages[e]);
  }

  void assign(UserRecord user) {
    this.email = user.email;
    this.password = user.password;
    this.name = user.name;

    // this.classification = user.classification;
    // this.major = user.major;
    // this.languages = {}; //how to make deep copy of a map data structure
    // Language.values.forEach((e) => this.languages[e] = user.languages[e]);
  }

  @override
  String toString() {
    return 'UserRecord[email=$email password=$password]';
  }

  static List<UserRecord> fakeDB = [
    UserRecord(
      email: 'ebookreader@gmail.com',
      password: '123456',
      name: 'John',
    ),
    UserRecord(
      email: 'comicbookreader@gmail.com',
      password: '123456',
      name: 'Sally',
    ),
  ];
}

var books = [
  Image.asset('images/bladeitself.PNG'),
  Image.asset('images/darkness.PNG'),
  Image.asset('images/blackcompany.PNG'),
];
