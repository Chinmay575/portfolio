abstract class _UserRepository {
  Future<bool> checkUserExists(String userName);
}

class UserRepository implements _UserRepository {
  @override
  Future<bool> checkUserExists(String userName) async {
    return false;
  }
}
