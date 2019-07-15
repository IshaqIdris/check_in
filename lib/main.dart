// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_sound_example/pages/calloutText.dart' as prefix0;
import './pages/calloutRecord.dart';
import './pages/signIn.dart';
import './pages/calloutText.dart';

import 'package:firebase_auth/firebase_auth.dart';


void main() {
  runApp(MaterialApp(
    title: 'COLOR',
    home: SignIn(),
  ));
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COLOR',
      home: Scaffold(
        appBar: AppBar(
          title: Text('COLOR'),
        ),
        body: Center(
        
        child: RaisedButton(
          child: Text('View Callouts'),
          onPressed: () {
            // if(FirebaseAuth.instance.currentUser() != null){
            // wrong call in wrong place!
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalloutText ()),
              );
            // } else {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SignIn ()),
              // );
            // }
          },
        ),
      ),
      ),
    );
  }
}