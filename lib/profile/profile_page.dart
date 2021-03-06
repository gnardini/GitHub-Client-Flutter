import 'package:flutter/material.dart';

import '../app_bar/search_bar.dart';
import 'package:github_client/model/repository.dart';
import 'package:github_client/model/user.dart';
import 'package:github_client/profile/repository_item.dart';
import 'package:github_client/repository/user_repository.dart';
import 'package:github_client/widget_utils/widget_utils.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage(this._owner, this._userRepository, {Key key}) : super(key: key);

  final String _owner;
  final UserRepository _userRepository;

  @override
  ProfileState createState() => new ProfileState(_owner, _userRepository);
}

class ProfileState extends State<ProfilePage> {
  ProfileState(this._owner, this._userRepository) {
    _repositories = [];
    _userRepository.fetchUser(_owner).then(_updateUserInfo);
  }

  final String _owner;
  final UserRepository _userRepository;

  List<Repository> _repositories;

  void _onSearchPressed() {
    print("searching...");
  }

  void _updateUserInfo(List<Repository> repositories) {
    setState(() {
      _repositories = repositories;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<RepositoryItem> repositoryItems = _repositories
        .map((repository) => new RepositoryItem(repository))
        .toList();
    return new Scaffold(
      appBar: new SearchBar(_owner, onPressed: _onSearchPressed),
      body: new Block(
        children: WidgetUtils.addDividers(repositoryItems),
      ),
    );
  }
}
