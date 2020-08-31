import 'package:flutter/material.dart';
import 'package:flutter_layout/screens/screens.dart';
import 'mywidgets/mywidgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        name: 'Damrong',
        title: 'My App',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({@required this.title, this.name = "damrong"});

  final String title;
  final String name;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title + " " + widget.name),
        actions: [],
      ),
      body: Container(
        child: Center(
          child: MyListView(),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: <Widget>[
          //     MyText(text: "MyText Widget", color: Colors.blue),
          //     MyText(text: "MyText cccc", color: Colors.red),
          //     MyText(text: "MyText dd", color: Colors.green),
          //   ],
          // ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostListScreen(),
            ),
          );
        },
        tooltip: 'Post Screen',
        child: Icon(Icons.pages_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
