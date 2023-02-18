
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.cover,
        //         image: AssetImage('assets/images/background.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Container(
            //   alignment: Alignment.centerRight,
            //   width: double.infinity,
            //   height: 150,
            //   child: Image.asset('assets/images/light.png'),
            // ),
            SizedBox(
              height: 300,
              child: Column(
                children: const [
                  Text('Page2',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                  Text('Smart Home',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  Text('Let\'s manage your smart home',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45)),
                ],
              ),
            ),
            GestureDetector(
              child:  Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 25, right: 10, left: 10),
                  width: double.infinity,
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: const Text(
                    'Get Smart',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )
              ),
              onTap: (){
                print('onTab');
              },
            )
          ],
        ),
      ),
    );
  }
}