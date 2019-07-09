import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Book Reading App UI",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.black; // background color of top appbar

    return Scaffold(
      // we define the app bar
      backgroundColor:
          Color.fromRGBO(244, 244, 244, 1), //a shade under full white
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryColor, border: Border.all(color: primaryColor)),
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                child: Row(
                  // allows for distancing the icons to the opposite sides in the appbar
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // settings button
                    IconButton(
                      icon: Icon(Icons.settings),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),

                    IconButton(
                      // to access book store where user can buy digital ebooks.
                      icon: Icon(Icons.person),
                      color: Colors.white,
                      iconSize: 35.0,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                // clips a widget into a curve of your choice
                ClipPath(
                  clipper:
                      MyShapeClipper(), //defines what type of clipping you want
                  child: Container(
                    height: 350.0,
                    decoration: BoxDecoration(color: primaryColor),
                  ),
                ),

                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Reader's Board",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Material(
                        elevation: 1.0,
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.red[300],
                        child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                          child: Text(
                            "Resume",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // we define the dashboard here
                Padding(
                  padding: EdgeInsets.only(top: 120, right: 25.0, left: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 290.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 15.0),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  // library access button defined here
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.library_books),
                                      color: Colors.black,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Library",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),

                                  SizedBox(
                                    height: 25.0,
                                  ),

                                  // notes button is defined here
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.border_color),
                                      color: Colors.black,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Notes",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  // book store button is defined here
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.store),
                                      color: Colors.black,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Book Store",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),

                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  // wish list button is defined here
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.collections_bookmark),
                                      color: Colors.black,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Wish List",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  // bookmark button is defined here
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.bookmark),
                                      color: Colors.black,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Bookmarks",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),

                                  SizedBox(
                                    height: 25.0,
                                  ),
                                  // cloud sync button is defined here
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.sync),
                                      color: Colors.black,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Cloud Sync",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //we start the recommendations section here
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
              child: Text(
                "Recommendations",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 35.0, bottom: 25.0),
              child: Container(
                height: 150.0,
                child: ListView(
                  // making a scrollable list of recommendations
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    UpcomingBook("Sci-Fi", Colors.purple),
                    UpcomingBook("Comics", Colors.red),
                    UpcomingBook("Non-Fiction", Colors.blueGrey),
                    UpcomingBook("Historical Fiction", Colors.blue),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// we define here the clipping we want for our widget
class MyShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 390.0 - 200);
    // the use of bezier to have a curve
    // size.width / 2 is responsible for giving a circular curvature shape
    path.quadraticBezierTo(size.width / 2, 280, size.width, 390.0 - 200);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

// we define book recommendations here.
class UpcomingBook extends StatelessWidget {
  final String title;
  final Color color;

  UpcomingBook(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        width: 170.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
