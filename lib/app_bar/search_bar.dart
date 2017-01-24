import 'package:flutter/material.dart';

/**
 * Simple AppBar with a title and a search icon
 */
class SearchBar extends AppBar {
  SearchBar(
      String title,
      {VoidCallback onPressed}) : super (
    title: new Text(title),
    actions: <Widget> [
      new IconButton(
          icon: new Icon(Icons.search),
          onPressed: onPressed
      )
    ]
  );

}
