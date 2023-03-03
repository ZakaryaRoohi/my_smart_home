import 'package:flutter/material.dart';
import 'package:my_smart_home/model/room_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  int _bottomIndex = 2;
  PageController pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 0.5,
                  image: AssetImage('assets/images/background.png'))),
          child: PageView(
            controller: pageController,
            children: [
              Center(
                  child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 300,
                color: Colors.orange,
                child: const Text(
                  '1',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              )),
              Center(
                  child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 300,
                color: Colors.orange,
                child: const Text(
                  '2',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              )),

              /// home
              Center(
                  child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    /// profile
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///welcome and name
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Welcome Home',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                'Andery Thomson',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              )
                            ],
                          ),

                          /// image profile
                          Container(
                            width: height * 0.1,
                            height: height * 0.1,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage('assets/images/profile.jpg'),
                                )),
                          )
                        ],
                      ),
                    ),

                    /// rooms
                    SizedBox(
                        height: height * 0.72,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const BouncingScrollPhysics(),
                          itemCount: roomList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                print(roomList[index].roomName);
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                height: height * 0.15,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            roomList[index].assetAddress))),
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 15),
                                  decoration: const BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Text(
                                    roomList[index].roomName,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            );
                          },
                        ))
                  ],
                ),
              )),
              Center(
                  child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 300,
                color: Colors.orange,
                child: Text(
                  '4',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              )),
              Center(
                  child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 300,
                color: Colors.orange,
                child: Text(
                  '5',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
              )),
            ],
            onPageChanged: (pageIndex) {
              setState(() {
                _bottomIndex = pageIndex;
              });
            },
          ),
        ),

        /// bottomSheet
        SizedBox(
          width: width,
          height: height * 0.12,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              /// bottom Items
              Container(
                height: height * 0.08,
                margin: EdgeInsets.only(top: height * 0.04),
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: height * 0.05,
                            child: Image.asset('assets/icons/Home.png'),
                          ),
                          SizedBox(
                            height: height * 0.05,
                            child: Image.asset('assets/icons/Apps.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: height * 0.05,
                            child:
                                Image.asset('assets/icons/Notifications.png'),
                          ),
                          SizedBox(
                            height: height * 0.04,
                            child: Image.asset('assets/icons/Vector.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              /// add button
              Container(
                height: height * 0.08,
                width: height * 0.08,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 5,
                          color: Colors.black)
                    ]),
                child: Icon(
                  Icons.add,
                  size: height * 0.05,
                  color: Colors.white,
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
