import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import '../quotes.dart';

class HomeScreen extends StatefulWidget {
	@override
	_HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
	String text = "Make me happy!";
	Future<CacheManager> cacheManager = CacheManager.getInstance();
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			drawer: Drawer(
				child: ListView(
					children: <Widget>[
						ListTile(
							title: Text('Settings'),
							onTap: () {
							},
						),
					],
				),
			),
			body: GestureDetector(
				onTap:(){
					getNewQuote(cacheManager).then((val){
						setState(() {
							this.text = val;
						});
					});
				},
				child: Center(
					child: Text(
						text,
						style: TextStyle(
							fontFamily: 'Tahu!',
							fontSize: 45
						)
					),
				),
			)
		);
	}
}