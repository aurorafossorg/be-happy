import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
	@override
	_HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
			body: Center(
				child: FlatButton(
					onPressed: () {
					},
					child: Text(
						"Make me happy!",
						style: TextStyle(
							fontFamily: 'Tahu!',
							fontSize: 45)
					))
			),
		);
	}
}