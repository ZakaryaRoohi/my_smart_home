import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RoomState();
}

class RoomState extends State<RoomScreen> {
  bool airCondition = false;
  bool light = false;
  bool tv = false;
  bool fan = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.png'))),
        child: Column(
          children: [
            /// profile
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              margin: EdgeInsets.only(top: height * 0.05),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 35,
                      )),

                  Text('Room',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),

                  /// image profile
                  Container(
                    width: height * 0.1,
                    height: height * 0.1,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 3),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/profile.jpg'),
                        )),
                  )
                ],
              ),
            ),

            //Energy
            Container(
              margin: EdgeInsets.only(
                  top: height * 0.05, left: width * 0.1, right: width * 0.1),
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              alignment: Alignment.center,
              height: height * 0.12,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.black54, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// energy
                  Container(
                    height: height * 0.1,
                    width: height * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Icon(
                      Icons.electric_bolt,
                      color: Colors.white,
                      size: height * 0.05,
                    ),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '30.44 kWh',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text(
                        'Power usage today',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),

            /// row 1
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// air condition
                  Container(
                    width: width * 0.4,
                    height: height * 0.25,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0, -5),
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: height * 0.06,
                          width: height * 0.06,
                          child: Image.asset(
                            'assets/icons/room/Air_Conditioner.png',
                            color: airCondition ? Colors.green : Colors.red,
                          ),
                        ),
                        const Text(
                          'Air Condition',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Switch(
                            value: airCondition,
                            activeColor: Colors.green,
                            activeTrackColor: Colors.green.withOpacity(0.5),
                            inactiveTrackColor: Colors.red.withOpacity(0.5),
                            inactiveThumbColor: Colors.red,
                            onChanged: (bool value) {
                              setState(() {
                                airCondition = value;
                              });
                            })
                      ],
                    ),
                  ),

                  /// smart tv
                  Container(
                    width: width * 0.4,
                    height: height * 0.25,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0, -5),
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: height * 0.06,
                          width: height * 0.06,
                          child: Image.asset(
                            'assets/icons/room/TV.png',
                            color: tv ? Colors.green : Colors.red,
                          ),
                        ),
                        const Text(
                          'Smart TV',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Switch(
                            value: tv,
                            activeColor: Colors.green,
                            activeTrackColor: Colors.green.withOpacity(0.5),
                            inactiveTrackColor: Colors.red.withOpacity(0.5),
                            inactiveThumbColor: Colors.red,
                            onChanged: (bool value) {
                              setState(() {
                                tv = value;
                              });
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),

            /// row 2
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// light bulb
                  Container(
                    width: width * 0.4,
                    height: height * 0.25,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0, -5),
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: height * 0.06,
                          width: height * 0.06,
                          child: Image.asset(
                            'assets/icons/room/Light.png',
                            color: light ? Colors.green : Colors.red,
                          ),
                        ),
                        const Text(
                          'Light Bulb',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Switch(
                            value: light,
                            activeColor: Colors.green,
                            activeTrackColor: Colors.green.withOpacity(0.5),
                            inactiveTrackColor: Colors.red.withOpacity(0.5),
                            inactiveThumbColor: Colors.red,
                            onChanged: (bool value) {
                              setState(() {
                                light = value;
                              });
                            })
                      ],
                    ),
                  ),

                  /// Fan
                  Container(
                    width: width * 0.4,
                    height: height * 0.25,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0, -5),
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: height * 0.06,
                          width: height * 0.06,
                          child: Image.asset(
                            'assets/icons/room/Fan_Speed.png',
                            color: fan ? Colors.green : Colors.red,
                          ),
                        ),
                        const Text(
                          'Fan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Switch(
                            value: fan,
                            activeColor: Colors.green,
                            activeTrackColor: Colors.green.withOpacity(0.5),
                            inactiveTrackColor: Colors.red.withOpacity(0.5),
                            inactiveThumbColor: Colors.red,
                            onChanged: (bool value) {
                              setState(() {
                                fan = value;
                              });
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
