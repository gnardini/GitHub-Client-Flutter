import 'dart:async';

import 'package:github_client/model/repository.dart';
import 'package:github_client/model/user.dart';

class UserRepository {

  Future<User> fetchUser(String username) {
    Completer<User> completer = new Completer();

    List<Repository> repositories = [];
    repositories.add(new Repository("Repo 1", "Java", 10));
    repositories.add(new Repository("Repo 2", "Dart", 20));
    repositories.add(new Repository("Repo 3", "Java", 30));
    completer.complete(new User(username, repositories));

    return completer.future;
  }

}
