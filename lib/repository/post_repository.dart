import 'dart:convert';
import 'package:flutter_layout/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_layout/constants.dart';

abstract class _PostRepository {
  Future<List<Post>> getPost();
}

class PostRepository extends _PostRepository {
  Future<List<Post>> getPost() async {
    var url = AppConstans.getPostUrl;
    var response = await http.get(url);
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    return postFromJson(response.body);
  }
}
