import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:portfolio/src/utils/urls.dart';

abstract class _NetworkRepository {
  Future<Res?> get<Req, Res>(
      String url, Res Function(Map<String, dynamic>) fromJson);

  Future<Res?> post<Req, Res>(
      String url, Req req, Res Function(Map<String, dynamic>) fromJson);

  Future<Res?> delete<Req, Res>(
      String url, Req req, Res Function(Map<String, dynamic>) fromJson);

  Future<Res?> put<Req, Res>(
      String url, Req req, Res Function(Map<String, dynamic>) fromJson);
}

class NetworkRepository implements _NetworkRepository {
  @override
  Future<Res?> delete<Req, Res>(
      String url, Req req, Res Function(Map<String, dynamic>) fromJson) async {
    // TODO: implement delete
    return null;
  }

  @override
  Future<Res?> get<Req, Res>(
    String url,
    Res Function(Map<String, dynamic>) fromJson,
  ) async {
    DateTime startTime = DateTime.now();
    try {
      http.Response response = await http.get(Uri.parse(Urls.baseUrl + url));

      print("${url}response fetched in ${_calculateResponseTime(startTime)}");

      if (response.statusCode ~/ 100 == 2) {
        final Map<String, dynamic> jsonData = json.decode(response.body);
        return fromJson(jsonData);
      }
    } on Exception catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Future<Res?> post<Req, Res>(
    String url,
    Req req,
    Res Function(Map<String, dynamic>) fromJson,
  ) async {
    DateTime startTime = DateTime.now();
    // try {
    //   http.Response response = await http.post(Uri.parse(Urls.baseUrl + url),body: req.toJson());

    //   print("${url}response fetched in ${_calculateResponseTime(startTime)}");

    //   if (response.statusCode ~/ 100 == 2) {
    //     final Map<String, dynamic> jsonData = json.decode(response.body);
    //     return fromJson(jsonData);
    //   }
    // } on Exception catch (e) {
    //   print(e);
    // }
    return null;
  }

  @override
  Future<Res?> put<Req, Res>(
      String url, Req req, Res Function(Map<String, dynamic>) fromJson) async {
    // TODO: implement put
    return null;
  }

  int _calculateResponseTime(DateTime startTime) {
    Duration duration = DateTime.now().difference(startTime);

    return duration.inMilliseconds;
  }
}
