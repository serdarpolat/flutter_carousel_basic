import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        elevation: 1.0,
        title: new Text('Carousel'),
        backgroundColor: Colors.black,
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 0.0),
          child: Column(
            children: <Widget>[
              Text(
                'We Are Aoutobots',
                style: TextStyle(color: Colors.black87, fontSize: 34.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 20.0,
                height: 200.0,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  images: [
                    AssetImage('./images/optimus.jpg'),
                    AssetImage('./images/bee.jpg'),
                    AssetImage('./images/hound.jpg'),
                    AssetImage('./images/jazz.jpg'),
                    AssetImage('./images/ironhide.jpg'),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.white,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.black.withOpacity(0.5),
                  borderRadius: true,
                  animationDuration: Duration(milliseconds: 1800),
                  autoplayDuration: Duration(milliseconds: 5000),
                  animationCurve: Curves.fastOutSlowIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
