import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

Widget show(int index) {
  return FanushHome();

  //switch(index){

  //case 0: return FanushHome();
  //break;

  //  case 0: return FanushSearch();
  //break;

  //case 0: return FanushDownload();
  //break;

  //case 0: return FanushMore();
  //break;

  // }
//}
}

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int index = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: show(index),
        backgroundColor: Color(0xff000000),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (int x) {
              setState(() {
                index = x;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xff000000),
                  icon: Icon(Icons.home),
                  title: Text(
                    'home',
                    style: TextStyle(color: Colors.orange),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text(
                    'search',
                    style: TextStyle(color: Colors.orange),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.file_download),
                  title: Text(
                    'download',
                    style: TextStyle(color: Colors.orange),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_vert),
                  title: Text(
                    'more',
                    style: TextStyle(color: Colors.orange),
                  )),
            ]),
      ),
    );
  }
}

class FanushHome extends StatefulWidget {
  FanushHomeState createState() => FanushHomeState();
}

class FanushHomeState extends State<FanushHome> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000000),
        body: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  child: Image(
                      height: 1000,
                      width: 2000,
                      alignment: Alignment.center,
                      image: NetworkImage(
                          'https://scontent.fdac24-1.fna.fbcdn.net/v/t1.6435-9/fr/cp0/e15/q65/232991589_876708836563416_1183838652097754491_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=07e735&efg=eyJpIjoidCJ9&_nc_ohc=7UmmgC4_gPEAX905LIB&_nc_ht=scontent.fdac24-1.fna&oh=da65a0d6e08a64aceff0cafa1ffb2b39&oe=613E39FB')),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Color(0xff000000).withOpacity(0.0),
                        Color(0xff000000),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 30.0,
                    top: 0.0,
                    child: Container(
                        height: 180,
                        width: 180,
                        //child: Image.network('https://github.com/Rifat-Ansari/CSE327_04_Project_07/blob/c714492480ccc9d863786bbff8a26e8e36938f22/fanush01/assets/images/logo.png')
                        // child: Image.network('data:image/jpeg;base64,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')
                        child: Image.asset('assets/logo.png'))),
                Positioned(
                  left: 630.0,
                  top: 60.0,
                  child: Text('series', style: TextStyle(color: Colors.orange)),
                ),
                Positioned(
                  left: 730.0,
                  top: 60.0,
                  child: Text('flims', style: TextStyle(color: Colors.orange)),
                ),
                Positioned(
                  left: 830.0,
                  top: 60.0,
                  child: Text('arcive', style: TextStyle(color: Colors.orange)),
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 600),
                    child: Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.orange,
                        ),
                        Text(
                          'My List',
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      child: Container(
                        width: 80.0,
                        height: 30.0,
                        color: Colors.orange,
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                              ),
                              Text('Play'),
                            ],
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 80)),
                  Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Column(
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.orange,
                        ),
                        Text(
                          'info',
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
