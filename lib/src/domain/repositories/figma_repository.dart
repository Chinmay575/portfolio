import 'dart:convert';
import 'dart:html' as html;
import 'package:flutter/services.dart';
import 'package:portfolio/src/domain/repositories/network_repository.dart';
import 'package:portfolio/src/utils/urls.dart';

abstract class _FigmaRepository {
  Future authenticateUser();

  Future getFileComponents(String url);
}

class FigmaRepository implements _FigmaRepository {
  NetworkRepository networkRepository = NetworkRepository();

  @override
  Future authenticateUser() async {
    String secrets = await rootBundle.loadString("json/secrets.json");
    Map<String, dynamic> data = jsonDecode(secrets);

    String redirectUri = "http://localhost:5000/oauth/callback";

    String url =
        "${FigmaUrls.oauth}?client_id=${data["client_id"]}&redirect_uri=$redirectUri&scope=files:read&state=123&response_type=code";
    html.window.location.href = url;
  }

  @override
  Future getFileComponents(String url) async {
    Uri parsedUrl = Uri.parse(url);

    List<String> s = parsedUrl.pathSegments;

    if (s.firstOrNull == "design") {
      if(s.length >=3 ) {
        String id = s[1];

        
        
      }
    }
    print(parsedUrl);
    print(s);
  }
}
