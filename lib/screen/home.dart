import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import '../quotes.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  String text = "Be Happy!";
  Future<CacheManager> cacheManager = CacheManager.getInstance();

  bool _visible = false;
  static const int _opacityTime = 250;

  void updateText() {
    getNewQuote(cacheManager).then((val) {
      setState(() {
        this.text = val;
        _visible = !_visible;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    updateText();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              _visible = !_visible;
            });
            new Timer(const Duration(milliseconds: _opacityTime), updateText);
          },
          child: Center(
            child: SingleChildScrollView(
              child: AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: _opacityTime),
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: Text(
                    this.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Tahu!', fontSize: 45),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
