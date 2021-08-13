import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        ),
      debugShowCheckedModeBanner: false,
      title: 'Learning Widgets',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
String txt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('ListTile Widget', style: TextStyle(color: Colors.white,),),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue[50],
                child: ListTile(
                  leading: Icon(Icons.star_border),
                  title: Text('Well Hello there!!', textScaleFactor: 1.5,),
                  subtitle: Text('Do Tap/LongPress here!!'),
                  trailing: Icon(Icons.done),
                  selected: true,  //This property holds a boolean as the object. If set to true then the text and icon will be painted with the same color(default to primary color)
                  onTap: () {
                    setState(() {
                      txt='List tile Tapped!!';
                    });
                  },
                  onLongPress: (){
                    setState(() {
                      txt ='List tile LongPressed!!';
                    });
                  },
                ),
              ),
              ),
              Text(txt, textScaleFactor: 2,),
          ],
        ),
    );
  }
}