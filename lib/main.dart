// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import './pages/calloutRecord.dart';
import './pages/signIn.dart';

import 'package:firebase_auth/firebase_auth.dart';


void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
        child: RaisedButton(
          child: Text('Callout'),
          onPressed: () {
            if(FirebaseAuth.instance.currentUser() != null){
            // wrong call in wrong place!
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CallOutRecord ()),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignIn ()),
              );
            }
          },
        ),
      ),
      ),
    );
  }
}