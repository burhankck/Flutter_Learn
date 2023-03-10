import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/service/comment_model.dart';
import 'package:flutter_app/Level_2/service/post_model.dart';

abstract class IPostService {
  Future<bool> addItemToService(NewModels newModels);
  Future<bool> putItemToService(NewModels newModels, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<NewModels>?> fetchPostItemsAdvance();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

class PostService extends IPostService {
  final Dio _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));

  @override
  Future<bool> addItemToService(NewModels newModels) async {
    try {
      final response =
          await _dio.post(_PostServicePaths.posts.name, data: newModels);
      return response.statusCode == HttpStatus.created;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> putItemToService(NewModels newModels, int id) async {
    try {
      final response = await _dio.post('${_PostServicePaths.posts.name}/$id',
          data: newModels);
      return response.statusCode == HttpStatus.ok;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    try {
      final response = await _dio.post('${_PostServicePaths.posts.name}/$id');
      return response.statusCode == HttpStatus.ok;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<List<NewModels>?> fetchPostItemsAdvance() async {
    try {
      final response =
          await Dio().get(getPostServiceUrl(_PostServicePaths.posts));

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => NewModels.fromJson(e)).toList();
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    try {
      final response = await Dio().get(_PostServicePaths.posts.name,
          queryParameters: {_PostQueryPaths.postId.name: postId});

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } catch (_) {
      print('aa');
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }

String getPostServiceUrl(Enum enumType) {
  if (enumType == _PostServicePaths.posts) {
    return "https://jsonplaceholder.typicode.com/posts";
  } else if (enumType == _PostServicePaths.comments) {
    return "https://jsonplaceholder.typicode.com/comments";
  } else {
    return "";
  }
}

enum _PostQueryPaths { postId }
