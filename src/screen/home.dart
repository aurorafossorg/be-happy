import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HomeScreen extends StatefulWidget {
	@override
	_HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
	@override
	Widget build(BuildContext context) {
		return new WebviewScaffold(
			url: "https://behappy.aurorafoss.org"
		);
	}
}