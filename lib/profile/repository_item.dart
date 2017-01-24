import 'package:flutter/material.dart';
import 'package:github_client/model/repository.dart';

class RepositoryItem extends StatelessWidget {
  RepositoryItem(this._repository);

  final Repository _repository;

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget> [
          new Column(
            children: <Widget> [
              new Text(_repository.name),
              new Text(_repository.language)
            ]
          ),
          new Text("Stars: ${_repository.stars}")
        ]
    );
  }

}