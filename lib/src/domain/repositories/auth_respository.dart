import 'package:portfolio/src/domain/repositories/network_repository.dart';

enum AuthType {email,google,github}

abstract class _AuthRepository {
  registerWithEmail({required String email, required String password});

  loginWithGoogle({required String email});

  loginWithGithub({required String email});

  loginWithEmail({required String email, required String password});
}

class AuthRespository extends _AuthRepository {

  final NetworkRepository _networkRepository = NetworkRepository();

  @override
  loginWithEmail({required String email, required String password}) {

    // _networkRepository.post("", );
  }

  @override
  loginWithGithub({required String email}) {
    // TODO: implement loginWithGithub
    throw UnimplementedError();
  }

  @override
  loginWithGoogle({required String email}) {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  registerWithEmail({required String email, required String password}) {
    // TODO: implement registerWithEmail
    throw UnimplementedError();
  }
}
