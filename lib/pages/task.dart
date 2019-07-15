import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  TaskPage({@required this.title, this.description});

  final title;
  final description;

  Widget getTitle(title) {
  if (title != null) {
    return Text(title);
  }
  return Container();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: getTitle(title),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                getTitle(title),
                RaisedButton(
                    child: Text('Respond'),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () => Navigator.pop(context)),
              ]),
        ));
  }
}