import 'dart:async';

import 'dart:convert';
import 'package:flutter/http.dart' as http;
import 'package:github_client/model/repository.dart';

class UserRepository {
  static final String GITHUB_URL = "https://api.github.com";
  static final String GITHUB_ACCEPT = "application/vnd.github.v3+json";
  static final Map<String, String> DEFAULT_HEADERS = {
    "Accept": GITHUB_ACCEPT,
  };

  Future<List<Repository>> fetchUser(String username) {
    return http
        .get("$GITHUB_URL/users/$username/repos", headers: DEFAULT_HEADERS)
        .then((response) => JSON
            .decode(response.body)
            .map((map) => new Repository(map['name'], map['description'],
                map['language'], map['stargazers_count']))
            .toList());
  }
}
