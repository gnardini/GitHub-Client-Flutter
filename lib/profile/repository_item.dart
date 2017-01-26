import 'package:flutter/material.dart';
import 'package:github_client/model/repository.dart';

class RepositoryItem extends StatelessWidget {
  RepositoryItem(this._repository);

  final Repository _repository;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: new EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: _repoNameDescriptionLanguage(),
          ),
          new Text("Stars: ${_repository.stars}"),
        ],
      ),
    );
  }

  Widget _repoNameDescriptionLanguage() {
    return new Container(
      child: new Column(
        children: <Widget>[
          _repoNameLanguage(_repository.name, _repository.language),
          _repoDescription(_repository.description),
        ],
      ),
    );
  }

  Widget _repoNameLanguage(String name, String language) {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: _repoNameText(name),
        ),
        new Container(
          margin: new EdgeInsets.only(right: 16.0),
          child: _repoLanguageText(language),
        ),
      ],
    );
  }

  Widget _repoDescription(String description) {
    return new Container(
      constraints: new BoxConstraints(minWidth: double.INFINITY),
      padding: new EdgeInsets.only(top: 4.0),
      child: _repoDescriptionText(description),
    );
  }

  Text _repoNameText(String name) {
    return new Text(
      name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: new TextStyle(color: Colors.black87, fontSize: 16.0),
    );
  }

  Text _repoDescriptionText(String description) {
    return new Text(
      description,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: new TextStyle(color: Colors.black54, fontSize: 14.0),
    );
  }

  Text _repoLanguageText(String language) {
    return new Text(
      language,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      style: new TextStyle(color: Colors.black45, fontSize: 14.0),
    );
  }
}
