import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:xml/xml.dart' as xml;
import 'dart:ui';
import 'dart:math';

Future<String> getNewQuote(Future<CacheManager> cacheManager) async
{
	var manager = await cacheManager;
	var file = await manager.getFile("https://behappy.aurorafoss.org/res/values/"+window.locale.toString().replaceFirst("_", "-")+"/quotes.xml");
	var quote_document = xml.parse(file.readAsStringSync());
	var quotes = quote_document.findAllElements("quote").toList();

	return quotes[new Random().nextInt(quotes.length)].text;
}