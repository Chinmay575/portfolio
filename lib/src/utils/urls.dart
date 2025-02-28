class Urls {
  static final Map<Env, String> _urls = {
    Env.local: _local,
    Env.test: _test,
    Env.live: _live,
  };

  static String get baseUrl => _urls[Env.local] ?? _local;

  static const String _local = "";

  static const String _test = "";

  static const String _live = "";

  static const String about = "/api/about";

  static const String experience = "/api/experiences";

  static const String skills = "/api/skills";

  static const String project = "/api/projects";

  static const String checkUserExists = "/api/auth/checkUser/";
}

enum Env { local, test, live }
