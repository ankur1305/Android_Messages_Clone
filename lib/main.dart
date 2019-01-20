import 'package:chat_message/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final Color c1 = const Color.fromARGB(255, 25, 115, 232);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white10,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Center(
              child: new Text(
            "Messages",
            style: new TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway-Bold',
                fontSize: 18.0),
          )),
        ),
        actions: <Widget>[
          new Row(
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              new PopupMenuButton<String>(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                  onSelected: choiceAction,
                  itemBuilder: (BuildContext context) {
                    return Constants.choices.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  })
            ],
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
              backgroundColor: Colors.orange,
            ),
            title: new Text(
              "Ankur",
              style: new TextStyle(fontFamily: 'Raleway-Bold'),
            ),
            subtitle: new Text(
              "This is a message from someone else",
              style: new TextStyle(fontFamily: 'Raleway'),
            ),
            trailing: new Text(
                "Sun",
              style: new TextStyle(fontFamily: 'Raleway'),
            ),
          ),
          new ListTile(
            leading: new CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
              backgroundColor: Colors.orange,
            ),
            title: new Text(
              "Rahul",
              style: new TextStyle(fontFamily: 'Raleway-Bold'),
            ),
            subtitle: new Text(
              "This is a message from no one else",
              style: new TextStyle(fontFamily: 'Raleway'),
            ),
            trailing: new Text(
              "Sun",
              style: new TextStyle(fontFamily: 'Raleway'),
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton.extended(
          elevation: 0.0,
          icon: Icon(Icons.chat),
          backgroundColor: c1,
          onPressed: () {},
          label: Text(
            "Start chat",
            style: new TextStyle(fontSize: 14.0, fontFamily: 'Raleway-Bold'),
          ),
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    print("WORKING");
  }
}
