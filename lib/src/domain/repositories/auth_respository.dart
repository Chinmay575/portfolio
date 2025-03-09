import 'package:portfolio/src/domain/models/request/register_user_req.dart';
import 'package:portfolio/src/domain/repositories/network_repository.dart';
import 'package:portfolio/src/utils/urls.dart';

enum AuthType { email, google, github }

abstract class _AuthRepository {
  registerWithEmail(
      {required String name, required String email, required String password});

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
  registerWithEmail({
    required String name,
    required String email,
    required String password,
  }) async {
    RegisterUserReq req =
        RegisterUserReq(name: name, email: email, password: password);
    Map<String, dynamic>? res =
        await _networkRepository.post(Urls.register, req.toJson());
    return res;
  }
}
