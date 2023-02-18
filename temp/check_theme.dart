import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key,});


  @override
  State<MyApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  int _counter = 0;
  bool _isDark = true;

  void _incrementCounter() {

    setState(() {
      _isDark=!_isDark;
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDark?ThemeData.dark():ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(

          title: Text('MaApp'),
        ),
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.ac_unit , size: 50 , color: Colors.green,),
                      Icon(Icons.access_alarms_rounded , size: 50 , color: Colors.green,),
                      Icon(Icons.access_time_filled_sharp , size: 50 , color: Colors.green,),
                      Icon(Icons.account_circle_outlined , size: 50 , color: Colors.green,),
                    ],
                  ),
                  /// logo
                  // Container(
                  //   width: 200,height: 200,
                  //   decoration: BoxDecoration(
                  //     color:Colors.red.withOpacity(0.5),
                  //     shape: BoxShape.circle,
                  //     border: Border.all(color: Colors.green , width: 8)
                  //   ),
                  // ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/408fbcae5f0f5916b429.png'),
                  ),
                  /// my widget
                  Text('My Widget' , style: TextStyle(fontSize: 40 ,color: Colors.deepOrange.withOpacity(0.5)),),
                  SizedBox(height: 100,
                    child: Icon(Icons.door_sliding ,size: 70, color: Colors.orange,),),
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$_counter',
                    style:TextStyle(
                        color: Colors.red,fontSize: 60 , fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            )
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
