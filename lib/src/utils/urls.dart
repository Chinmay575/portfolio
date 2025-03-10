class Urls {
  static final Map<Env, String> _urls = {
    Env.local: _local,
    Env.test: _test,
    Env.live: _live,
  };

  static String get baseUrl => _urls[Env.local] ?? _local;

  static const String _local = "http://127.0.0.1:5000/";

  static const String _test = "";

  static const String _live = "";

  static const String about = "/api/about";

  static const String experience = "/api/experiences";

  static const String skills = "/api/skills";

  static const String project = "/api/projects";

  static const String checkUserExists = "/api/auth/checkUser/";

  static const String login = "/api/auth/login";

  static const String register = "/api/auth/register";
}

class FigmaUrls {
  static const String baseUrl = "https://api.figma.com";

  static const String oauth = "https://www.figma.com/oauth";
}

enum Env { local, test, live }
