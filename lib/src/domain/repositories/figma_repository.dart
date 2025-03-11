import 'dart:convert';
import 'dart:html' as html;
import 'package:flutter/services.dart';
import 'package:portfolio/src/domain/repositories/network_repository.dart';
import 'package:portfolio/src/utils/urls.dart';

abstract class _FigmaRepository {
  Future authenticateUser();

  (String, String) extractOAuthCode();
}

class FigmaRepository implements _FigmaRepository {
  NetworkRepository networkRepository = NetworkRepository();

  @override
  Future authenticateUser() async {
    String secrets = await rootBundle.loadString("json/secrets.json");
    Map<String, dynamic> data = jsonDecode(secrets);

    String url =
        "${FigmaUrls.oauth}?client_id=${data["client_id"]}&redirect_uri=${Uri.encodeComponent(html.window.location.href)}&scope=files:read&state=123&response_type=code";

    print(url);
    // await launchUrl(Uri.parse(url));

    html.window.location.href = url;
  }

  (String, String) extractOAuthCode() {
    String url = html.window.location.href;

    Uri parsedUrl = Uri.parse(url);

    Map<String, String> query = parsedUrl.queryParameters;

    if (query.containsKey("code") && query.containsKey("state")) {
      return (query["code"] ?? "", query["state"] ?? "");
    }

    return ("", "");
  }
}
