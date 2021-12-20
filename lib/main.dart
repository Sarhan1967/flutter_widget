import 'package:flutter/material.dart';

import 'layouts/home_screen.dart';


/*
//==== the same as before============
void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build

    return new MaterialApp(
        title:"First App",
        home:Scaffold(
            appBar: AppBar(
                title: Text("HELLO FLUTTER")
            ),
            body:HomeScreen()
        )
    );
  }
  
}
*/

/*


//==== the same as before============
void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title:"First App",
        home:Scaffold(
            appBar: AppBar(
                title: Text("HELLO FLUTTER")
            ),
            body:Material(
                color: Colors.lightBlueAccent,
                child:Center(
                  child: Text(
                    "HELLO WORLD",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.white,fontSize: 30)
                  ),
                )
            )
        )
    );
  }

}
*/


//==Lists=1=========================
/*
class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  HomeScreen();
  }
}

void main() {
  runApp(
      MaterialApp(
          title: "My List View",
          home: Scaffold(
            appBar: AppBar(title: Text("The big List")),
            body: myBigList(),

          )
      )
  );
}

Widget myListView(){

  var list=ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("My Alarm"),
        subtitle: Text("the body of the alarm list"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
          debugPrint("Hello world");
        },
      ),

      ListTile(
        title: Text("My android"),
        trailing: Icon(Icons.image),
      ),
  ],
  );
  return list;
 }

List<String> getDataSource() {

  var items = List<String>.generate(50, (i) => "item ${i + 1} ");
  return items;
}


Widget myBigList() {

  var items = getDataSource();

  var listView = ListView.builder(
      itemBuilder: (context, i) {

        return ListTile (
          leading: Icon(Icons.ac_unit),
          title: Text(items[i]),
          subtitle: Text("bla bla bla ........"),
          onTap: () {
            debugPrint(
                "list num# ${items[i]}"
            );
            },
        );
      }
  );

  return listView;
}
*/


//==Lists=2=====Snacke Bar ====================
/*
class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  HomeScreen();
  }
}

void main() {
  runApp(
      MaterialApp(
          title: "My List View",
          home: Scaffold(
            appBar: AppBar(title: Text("The big List")),
            body: myBigList(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint("add new item");
              },
              child:Icon(Icons.add),
              tooltip:"add new item",
            ),

          )
      )
  );
}

Widget myListView(){

  var list=ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("My Alarm"),
        subtitle: Text("the body of the alarm list"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
          debugPrint("Hello world");
        },
      ),

      ListTile(
        title: Text("My android"),
        trailing: Icon(Icons.image),
      ),
    ],
  );
  return list;
}

List<String> getDataSource() {

  var items = List<String>.generate(50, (i) => "item ${i + 1} ");
  return items;
}


Widget myBigList() {

  var items = getDataSource();

  var listView = ListView.builder(
      itemBuilder: (context, i) {

        return ListTile (
          leading: Icon(Icons.ac_unit),
          title: Text(items[i]),
          subtitle: Text("bla bla bla ........"),
          onTap: () {
            showBar(context,"list num# ${items[i]}");
          }
        );
      }
  );

  return listView;
}
//-------Snacke Bar-----------
void showBar(BuildContext context, String msg) {
  var bar = SnackBar(
    content: Text(msg),
    action: SnackBarAction(label: "UNDO", onPressed: () {
      onClick(context);
    }),
  ) ;

  Scaffold.of(context).showSnackBar(bar);
}

void onClick(BuildContext context){

  AlertDialog alertDialog = AlertDialog(
    title: Text("UNDO"),
    content: Text("UNDO THE OPERATION :)"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
  );
}
*/

//==Lists=3=====StatefulWidget ====================
/*
class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  HomeScreen();
  }
}

Widget myListView(){

  var list=ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("My Alarm"),
        subtitle: Text("the body of the alarm list"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
          debugPrint("Hello world");
        },
      ),

      ListTile(
        title: Text("My android"),
        trailing: Icon(Icons.image),
      ),
    ],
  );
  return list;
}

List<String> getDataSource() {

  var items = List<String>.generate(50, (i) => "item ${i + 1} ");
  return items;
}


Widget myBigList() {

  var items = getDataSource();

  var listView = ListView.builder(
      itemBuilder: (context, i) {

        return ListTile (
          leading: Icon(Icons.ac_unit),
          title: Text(items[i]),
          subtitle: Text("bla bla bla ........"),
          onTap: () {
            showBar(context,"list num# ${items[i]}");
          }
        );
      }
  );

  return listView;
}
//-------SnackBar-----------
void showBar(BuildContext context, String msg) {
  var bar = SnackBar(
    content: Text(msg),
    action: SnackBarAction(label: "UNDO", onPressed: () {
      onClick(context);
    }),
  ) ;

  Scaffold.of(context).showSnackBar(bar);
}

void onClick(BuildContext context){

  AlertDialog alertDialog = AlertDialog(
    title: Text("UNDO"),
    content: Text("UNDO THE OPERATION :)"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
  );
}

void main() {
  runApp(
    MaterialApp(
      title: "Stateful Widgets",
      home:StudentNames() ,
    ),
  );
}

class StudentNames extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentNames();
  }
}
class _StudentNames extends State<StudentNames>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Stateful Project"),
      ),
      body: Column(
            children:<Widget>[
              TextField(
              ),
              Text(
              "The Student is")
          ],
        ),
    );
  }

  }
*/

//==Lists=3=====StatefulWidget =====to save text===============
//void main() => runApp(MyFlutterApp());
/*

class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  HomeScreen();
  }
}

Widget myListView() {
  var list = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("My alarm"),
        subtitle: Text("the body of the alam list"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
          debugPrint("Hello world");
        },
      ),
      ListTile(
        leading: Icon(Icons.adb),
        title: Text("My android"),
        subtitle: Text("the body of the android list"),
        trailing: Icon(Icons.image),
      ),      ListTile(
        title: Text("My android"),
        trailing: Icon(Icons.image),
      ),

    ],
  );
  return list;
}


List<String> getDataSource() {

  var items = List<String>.generate(1000, (i) => "item ${i + 1} ");
  return items;
}

Widget myBigList() {

  var items = getDataSource();

  var listView = ListView.builder(
      itemBuilder: (context, i) {

        return ListTile (
          leading: Icon(Icons.ac_unit),
          title: Text(items[i]),
          subtitle: Text("bla bla bla ........"),
          onTap: () {
            showBar(context , "list num# ${items[i]}");
          },
        );
      }
  );

  return listView;
}

void showBar(BuildContext context, String msg) {
  var bar = SnackBar(
    content: Text(msg),
    action: SnackBarAction(label: "UNDO", onPressed: () {
      onClick(context);
    }),
  ) ;

  Scaffold.of(context).showSnackBar(bar);
}

void onClick(BuildContext context){

  AlertDialog alertDialog = AlertDialog(
    title: Text("UNDO"),
    content: Text("UNDO THE OPERTION :)"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
  );
}

void main() {
  runApp(
      MaterialApp(
          title: "the Stateful Widgets",
          home: StudentsNames()
      )
  );
}

class StudentsNames extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentsNames();
  }
}

class _StudentsNames extends State<StudentsNames> {

  String student="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful project"),),
      body:
      Container(
          margin: EdgeInsets.all(20),
          child:  Column(
            children: <Widget>[
              TextField(
                onChanged: (String userInput) {
                  setState(() {
                    student = userInput;
                  });
                },
              ),
              Padding(
                  padding:  EdgeInsets.all(30),
                  child:  Text("the Student is : $student")
              )
            ],
          )
      ),
    );
  }
}
*/

//==Lists=3=====StatefulWidget =====DropDown===============
/*
class MyFlutterApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  HomeScreen();
  }
}

Widget myListView() {
  var list = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("My alarm"),
        subtitle: Text("the body of the alarm list"),
        trailing: Icon(Icons.accessibility),
        onTap: () {
          debugPrint("Hello world");
        },
      ),
      ListTile(
        leading: Icon(Icons.adb),
        title: Text("My android"),
        subtitle: Text("the body of the android list"),
        trailing: Icon(Icons.image),
      ),      ListTile(
        title: Text("My android"),
        trailing: Icon(Icons.image),
      ),

    ],
  );
  return list;
}


List<String> getDataSource() {

  var items = List<String>.generate(1000, (i) => "item ${i + 1} ");
  return items;
}

Widget myBigList() {

  var items = getDataSource();

  var listView = ListView.builder(
      itemBuilder: (context, i) {

        return ListTile (
          leading: Icon(Icons.ac_unit),
          title: Text(items[i]),
          subtitle: Text("bla bla bla ........"),
          onTap: () {
            showBar(context , "list num# ${items[i]}");
          },
        );
      }
  );

  return listView;
}

void showBar(BuildContext context, String msg) {
  var bar = SnackBar(
    content: Text(msg),
    action: SnackBarAction(label: "UNDO", onPressed: () {
      onClick(context);
    }),
  ) ;

  Scaffold.of(context).showSnackBar(bar);
}

void onClick(BuildContext context){

  AlertDialog alertDialog = AlertDialog(
    title: Text("UNDO"),
    content: Text("UNDO THE OPERATION :)"),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      }
  );
}

void main() {
  runApp(
      MaterialApp(
          title: "the Stateful Widgets",
          home: StudentsNames()
      )
  );
}

class StudentsNames extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentsNames();
  }
}

class _StudentsNames extends State<StudentsNames> {

  String student="";
  var languages=["VB","C#","C++","Java","Dart","Select One"];
  var selectedLang = "Select One";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful project"),),
      body:
      Container(
          margin: EdgeInsets.all(20),
          child:  Column(
            children: <Widget>[
              TextField(
                onChanged: (String userInput) {
                  setState(() {
                    student = userInput;
                  }
                  );
                },
              ),
              Padding(
                  padding:  EdgeInsets.all(30),
                  child:  Text("the Student is : $student")
              ),
              //-------------------------
              DropdownButton<String> (
                items: languages.map((String selectItem) {
                  return DropdownMenuItem<String> (
                    value: selectItem,
                    child: Text(selectItem),
                  );
                },
                ).toList(),
//----- (String theLang)--String removed-----
                onChanged: (theLang) {
                  setState(() {
//------ = theLang--! shoud be added----------
                    selectedLang = theLang!;
                  });
                },
                value: selectedLang,
              )
            ],
          )
      ),
    );
  }

}

*/




