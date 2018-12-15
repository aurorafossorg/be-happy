import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';

Future<String> get _localPath async {
	final directory = await getApplicationDocumentsDirectory();

	return directory.path;
}

class BeHappyConfig {
	static Future<File> write(String option, String value) async {
		final _file = await BeHappyConfig.file;
		var _config = json.decode(await _file.readAsString());
		_config[option] = value;

		// Write the file
		return _file.writeAsString(json.encode(_config));
	}

	static Future<File> get file async {
		final path = await _localPath;
		return File('$path/config.json');
	}

	Future<String> read(String option) async {
		final _file = await BeHappyConfig.file;
		final _config = json.decode(await _file.readAsString());

		return _config[option];
	}
}