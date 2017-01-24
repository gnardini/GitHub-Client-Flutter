import 'package:github_client/model/repository.dart';

class User {
  User(this.name, this.repositories);

  final String name;
  final List<Repository> repositories;
}