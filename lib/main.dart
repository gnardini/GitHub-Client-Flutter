import 'package:flutter/material.dart';

import 'package:github_client/repository/user_repository.dart';
import 'profile/profile_page.dart';

void main() {
  runApp(new GitHubClientApp());
}

class GitHubClientApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'GitHub Client',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new ProfilePage("gnardini", new UserRepository()),
    );
  }
}
