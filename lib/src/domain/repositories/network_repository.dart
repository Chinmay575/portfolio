import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:portfolio/src/utils/urls.dart';

abstract class _NetworkRepository {
  Future<Map<String, dynamic>?> get(
    String url,
    Map<String, dynamic> req,
  );

  Future<Map<String, dynamic>?> post(
    String url,
    Map<String, dynamic> req,
  );

  Future<Map<String, dynamic>?> delete(
    String url,
    Map<String, dynamic> req,
  );

  Future<Map<String, dynamic>?> put(
    String url,
    Map<String, dynamic> req,
  );
}

class NetworkRepository implements _NetworkRepository {
  @override
  Future<Map<String, dynamic>?> delete(
    String url,
    Map<String, dynamic> req,
  ) async {
    DateTime startTime = DateTime.now();
    try {
      http.Response response = await http.delete(
        Uri.parse(Urls.baseUrl + url),
        body: jsonEncode(req),
      );

      print("$url response fetched in ${_calculateResponseTime(startTime)}");

      if (response.statusCode ~/ 100 == 2) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return jsonData;
      }
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Future<Map<String, dynamic>?> get(
    String url,
    Map<String, dynamic> req,
  ) async {
    DateTime startTime = DateTime.now();
    try {
      http.Response response = await http.get(Uri.parse(Urls.baseUrl + url));

      print("$url response fetched in ${_calculateResponseTime(startTime)}");

      if (response.statusCode ~/ 100 == 2) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return jsonData;
      }
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Future<Map<String, dynamic>?> post(
    String url,
    Map<String, dynamic>? req,
  ) async {
    DateTime startTime = DateTime.now();
    try {
      http.Response response = await http.post(
        Uri.parse(Urls.baseUrl + url),
        body: jsonEncode(req),
      );

      print("$url response fetched in ${_calculateResponseTime(startTime)}");

      if (response.statusCode ~/ 100 == 2) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return jsonData;
      }
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Future<Map<String, dynamic>?> put(
    String url,
    Map<String, dynamic> req,
  ) async {
    DateTime startTime = DateTime.now();
    try {
      http.Response response = await http.put(
        Uri.parse(Urls.baseUrl + url),
        body: jsonEncode(req),
      );

      print("$url response fetched in ${_calculateResponseTime(startTime)}");

      if (response.statusCode ~/ 100 == 2) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return jsonData;
      }
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }

  int _calculateResponseTime(DateTime startTime) {
    Duration duration = DateTime.now().difference(startTime);

    return duration.inMilliseconds;
  }
}
