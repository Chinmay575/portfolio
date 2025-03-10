import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:portfolio/src/domain/repositories/network_repository.dart';
import 'package:portfolio/src/utils/urls.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class _FigmaRepository {
  Future authenticateUser();
}

class FigmaRepository implements _FigmaRepository {
  NetworkRepository networkRepository = NetworkRepository();

  @override
  Future authenticateUser() async {
    String secrets = await rootBundle.loadString("json/secrets.json");
    Map<String, dynamic> data = jsonDecode(secrets);

    String url =
        "${FigmaUrls.oauth}?client_id=${data["client_id"]}&redirect_uri=${data["redirect_uri"]}&scope=files:read&state=123&response_type=code";

    await launchUrl(Uri.parse(url));
  }
}
