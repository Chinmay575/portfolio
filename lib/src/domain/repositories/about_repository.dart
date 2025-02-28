import 'package:portfolio/src/domain/models/about/about.dart';

abstract class AboutRepository {
  Future<About> getAboutData();

  Future<void> updateAboutData({
    String? bio,
    String? name,
    String? location,
    String? profilePicture,
    String? email, 
  });
}

class AboutRepositoryImpl extends AboutRepository {
  @override
  Future<About> getAboutData() {
    // TODO: implement getAboutData
    throw UnimplementedError();
  }

  @override
  Future<void> updateAboutData({String? bio, String? name, String? location, String? profilePicture, String? email}) {
    // TODO: implement updateAboutData
    throw UnimplementedError();
  }
}
