import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pigment/pigment.dart';
import 'package:flutter/foundation.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flippo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'GoogleSans'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key); // changed

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

  List<String> names = [
    'Router',
    'Watch',
    'Refrigerator',
    'Temperature',
    'Pc',
    'Mobile',
    'Smart Cycle',
    'Stream',
    'Game Console',
    'Cloud',
    'Radio',
    'Banking',
    'Smartphone',
    'Speaker',
    'Wifi',
    'Chatting',
    'Fingerprint',
    'Lock',
    'Smart Glass',
    'Smart Car',
    'Drone'
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;

    return new Flippo(
      controller: controller,
      mask: new Scaffold(
        backgroundColor: Colors.white,
        body: new SafeArea(
            child: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                height: 50.0,
                padding: new EdgeInsets.only(right: 15.0, top: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new GestureDetector(
                      child: new Material(
                        color: Colors.grey.shade200,
                        type: MaterialType.circle,
                        child: Container(
                          padding: new EdgeInsets.all(5.0),
                          child: new Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 28.0,
                          ),
                        ),
                      ),
                      onTap: () {
                        if (controller.isCompleted)
                          controller.reverse();
                        else
                          controller.forward();
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
      body: new Scaffold(
        backgroundColor: Colors.white,
        body: new SafeArea(
            child: new Container(
          padding: new EdgeInsets.only(left: 10.0),
          child: new Column(
            children: <Widget>[
              new Container(
                height: 50.0,
                padding: new EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new GestureDetector(
                      child: new Material(
                        color: Colors.white,
                        child: new Image.asset(
                          'assets/icons/menu.png',
                          height: 28.0,
                          width: 28.0,
                        ),
                      ),
                      onTap: () {
                        if (!controller.isCompleted)
                          controller.forward();
                        else
                          controller.reverse();
                      },
                    ),
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        new Material(
                          color: Colors.white,
                          child: new Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 24.0,
                          ),
                        ),
                        new SizedBox(
                          width: 25.0,
                        ),
                        new Material(
                          color: Colors.white,
                          child: new Icon(
                            Icons.wifi_tethering,
                            color: Colors.black,
                            size: 25.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              new Expanded(
                  child: new Container(
                child: new SingleChildScrollView(
                  child: new Column(
                    children: <Widget>[
                      new SizedBox(
                        height: 20.0,
                      ),
                      new Container(
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                                child: new Column(
                              children: <Widget>[
                                new Text(
                                  'Temperature',
                                  style: textTheme.body1
                                      .copyWith(color: Colors.black),
                                ),
                                new SizedBox(
                                  height: 10.0,
                                ),
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Text(
                                      '28°',
                                      style: textTheme.display1
                                          .copyWith(color: Colors.black),
                                    ),
                                    new Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12.0, left: 5.0),
                                      child: new Text(
                                        'c',
                                        style: textTheme.subhead,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                            new Container(
                              height: 80.0,
                              width: 0.5,
                              color: theme.dividerColor,
                            ),
                            new Expanded(
                                child: new Column(
                              children: <Widget>[
                                new Text(
                                  'Voltage',
                                  style: textTheme.body1
                                      .copyWith(color: Colors.black),
                                ),
                                new SizedBox(
                                  height: 10.0,
                                ),
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Text(
                                      '32',
                                      style: textTheme.display1
                                          .copyWith(color: Colors.black),
                                    ),
                                    new Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12.0, left: 5.0),
                                      child: new Text(
                                        '%',
                                        style: textTheme.body2,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                          ],
                        ),
                      ),
                      new SizedBox(
                        height: 30.0,
                      ),
                      new Container(
                        padding: new EdgeInsets.only(left: 40.0),
                        child: new Material(
                          color: Colors.grey.shade200,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.only(
                            topLeft: new Radius.circular(4.0),
                            bottomLeft: new Radius.circular(16.0),
                          )),
                          child: new Container(
                            height: 60.0,
                            padding:
                                new EdgeInsets.only(left: 20.0, right: 10.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text(
                                  'Devices',
                                  style: textTheme.body1
                                      .copyWith(color: Colors.black),
                                ),
                                new IconButton(
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.black,
                                      size: 18.0,
                                    ),
                                    onPressed: () {})
                              ],
                            ),
                          ),
                        ),
                      ),
                      new SizedBox(
                        height: 20.0,
                      ),
                      new Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: new ClipRect(
                          clipper: new RectClipper(),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: new GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 3,
                            physics: ClampingScrollPhysics(),
                            children: new List.generate(21, (index) {
                              return new Center(
                                child: Material(
                                  color: Colors.white,
                                  child: new Container(
                                    width:
                                        (MediaQuery.of(context).size.width) / 3,
                                    alignment: Alignment.center,
                                    decoration: new BoxDecoration(
                                        border: new Border.all(
                                            color: Colors.grey.shade200)),
                                    child: new Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Image.asset(
                                          'assets/icons/${index + 1}.png',
                                          height: 28.0,
                                          width: 28.0,
                                          fit: BoxFit.cover,
                                        ),
                                        new SizedBox(
                                          height: 5.0,
                                        ),
                                        new Text(names[index])
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        )),
        floatingActionButton: new FloatingActionButton(
            elevation: 4.0,
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: new Icon(Icons.add, color: Colors.white),
            onPressed: () {}),
      ),
      drawer: new Container(
        padding: new EdgeInsets.all(50.0),
        height: MediaQuery.of(context).size.height,
        width: 280.0,
        child: new SafeArea(
            top: true,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new SizedBox(
                  height: 20.0,
                ),
                new Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  padding:
                      new EdgeInsets.only(left: 20.0, bottom: 10.0, top: 20.0),
                  child: new Image.asset('assets/images/logo.png'),
                ),
                new SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: new EdgeInsets.only(left: 20.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        'Home'.toUpperCase(),
                        style: textTheme.title
                            .copyWith(color: Pigment.fromString('#3CA2E1')),
                      ),
                      new SizedBox(
                        height: 5.0,
                      ),
                      new Text(
                        'Devices'.toUpperCase(),
                        style: textTheme.title.copyWith(color: Colors.white),
                      ),
                      new SizedBox(
                        height: 5.0,
                      ),
                      new Text(
                        'Pair / Unpair'.toUpperCase(),
                        style: textTheme.title.copyWith(color: Colors.white),
                      ),
                      new SizedBox(
                        height: 5.0,
                      ),
                      new Text(
                        'Stats'.toUpperCase(),
                        style: textTheme.title.copyWith(color: Colors.white),
                      ),
                      new SizedBox(
                        height: 5.0,
                      ),
                      new Text(
                        'Controls'.toUpperCase(),
                        style: textTheme.title.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ),
                new Expanded(
                  child: new Container(
                    padding: new EdgeInsets.only(left: 20.0, bottom: 20.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Text(
                          'About'.toUpperCase(),
                          style: textTheme.body1.copyWith(color: Colors.white),
                        ),
                        new SizedBox(
                          height: 5.0,
                        ),
                        new Text(
                          'Support'.toUpperCase(),
                          style: textTheme.body1.copyWith(color: Colors.white),
                        ),
                        new SizedBox(
                          height: 5.0,
                        ),
                        new Text(
                          'Terms'.toUpperCase(),
                          style: textTheme.body1.copyWith(color: Colors.white),
                        ),
                        new SizedBox(
                          height: 5.0,
                        ),
                        new Text(
                          'Faqs'.toUpperCase(),
                          style: textTheme.body1.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class RectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return new Rect.fromLTRB(2, 2, size.width - 2, size.height - 2);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class Flippo extends StatefulWidget {
  //Widget body
  final Widget body;

  //Widget to mask the body when drawer is open
  final Widget mask;

  //Widget drawer
  final Widget drawer;

  // Controller for controlling the Navigation.
  final AnimationController controller;

  Flippo({
    @required this.body,
    this.mask,
    @required this.drawer,
    this.controller,
  });

  @override
  _FlippoState createState() => _FlippoState();
}

class _FlippoState extends State<Flippo> with SingleTickerProviderStateMixin {
  // Controller for controlling the Navigation.
  AnimationController controller;

  // Tween for moving from 0 to pi/2 radian and vice versa.
  Animation _drawerAnimation;

  // Tween for going from 1 to 0 opacity and vice versa.
  Animation<double> _bodyOpacity;

  // Tween for going from 0 to 1 opacity and vice versa.
  Animation<double> _maskOpacity;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      controller = AnimationController(
          vsync: this, duration: Duration(milliseconds: 500));
    } else {
      controller = widget.controller;
    }

    _drawerAnimation = Tween(begin: 0.0, end: pi / 2).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );

    _bodyOpacity = new Tween(begin: 1.0, end: 0.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: Curves.easeOut,
      ),
    );

    _maskOpacity = new Tween(begin: 0.0, end: 1.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
      ),
    );

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragStart: (gestureDetails) => beginSwipe(gestureDetails),
        onHorizontalDragUpdate: (gestureDetails) =>
            getDirection(gestureDetails),
        onHorizontalDragEnd: (gestureDetails) => endSwipe(gestureDetails),
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  left: 0.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                        child: new Container(
                      color: Colors.white,
                      child: new Stack(
                        children: <Widget>[
                          new IgnorePointer(
                            ignoring: controller.isAnimating ||
                                controller.isCompleted,
                            child: new Opacity(
                              opacity: widget.mask != null
                                  ? _bodyOpacity.value
                                  : 1.0,
                              child: widget.body,
                            ),
                          ),
                          new IgnorePointer(
                            ignoring: !controller.isCompleted,
                            child: new Opacity(
                              opacity: _maskOpacity.value,
                              child: widget.mask != null
                                  ? widget.mask
                                  : new SizedBox(),
                            ),
                          ),
                        ],
                      ),
                    )),
                  )),
              Positioned(
                left: 0.0,
                child: new IgnorePointer(
                  ignoring: !controller.isCompleted,
                  child: new Transform(
                    //BLACK
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..translate(-(cos(_drawerAnimation.value) * (150)), 0.0,
                          (-(150) * sin(_drawerAnimation.value)))
                      ..rotateY(-(pi / 2) + _drawerAnimation.value),
                    child: new Material(
                      borderRadius: BorderRadius.circular(25.0),
                      elevation: 2.0,
                      color: Colors.black,
                      child: Center(child: widget.drawer),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  var gestureStart;
  var gestureDirection;

  void beginSwipe(DragStartDetails gestureDetails) {
    gestureStart = gestureDetails.globalPosition.dx;
  }

  void getDirection(DragUpdateDetails gestureDetails) {
    if (gestureDetails.globalPosition.dx < gestureStart) {
      gestureDirection = 'rightToLeft';
    } else {
      gestureDirection = 'leftToRight';
    }
  }

  void endSwipe(DragEndDetails gestureDetails) {
    if (gestureDirection == 'rightToLeft') {
      if (controller.isCompleted) controller.reverse();
    } else {
      controller.forward();
    }
  }
}
