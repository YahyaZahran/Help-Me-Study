import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testap/controllers/auth_controller.dart';
import 'package:testap/models/comment.dart';
import 'package:testap/models/course.dart';
import 'package:testap/models/post.dart';
import 'package:testap/models/user.dart';
import 'package:testap/utils/error.dart';

class ApiConstants {
  ApiConstants._();
  static final String baseUrl = 'http://omar94.pythonanywhere.com';
  static String _makEndPoint(String end) => '$baseUrl/$end';

  static String registerationEndPoint = _makEndPoint('auth/registration/');
  static String loginEndPoint = _makEndPoint('auth/login/');
  static String userEndPoint = _makEndPoint('auth/user/');
  static String postsEndPoint = _makEndPoint('posts/');
  static String coursesEndPoint = _makEndPoint('courses/');

  static String postCommentsEndPoint(int postId) =>
      postsEndPoint + '$postId/comments/';
  static String commentEndPoint(int postId, int commentId) =>
      postCommentsEndPoint(postId) + '$commentId/';
  static String postEndPoint(int postId) => postsEndPoint + '$postId/';
}

class Api extends GetxService {
  final Dio dio = Dio();

  void setAuthToken(String token) {
    dio.options = BaseOptions(
      headers: {
        'Authorization': 'Token $token',
      },
    );
  }

  Future<String> register({
    @required String name,
    @required String email,
    @required bool gender,
    @required String password1,
    @required String password2,
    String phoneNumber,
    String birthdate,
    String address,
  }) async {
    try {
      await dio.post(
        ApiConstants.registerationEndPoint,
        data: {
          'name': name,
          'email': email,
          'gender': gender ? 'M' : 'F',
          'password1': password1,
          "password2": password2,
          'phone': phoneNumber,
          'birth_date': birthdate.toString(),
          // 'address': address
        },
      );
    } on DioError catch (e) {
      if (e.type == DioErrorType.response && e.response.statusCode == 400) {
        var error = ApiFormError.fromJson(e.response.data);
        throw error;
      }
      if (e.type == DioErrorType.other) {
        throw e.error;
      }
    }
    return 'Mail Sent';
  }

  Future<String> login({
    @required String email,
    @required String password,
  }) async {
    try {
      var response = await dio.post(
        ApiConstants.loginEndPoint,
        data: {
          'email': email,
          'password': password,
        },
      );
      return response.data['key'];
    } on DioError catch (e) {
      if (e.type == DioErrorType.response && e.response.statusCode == 400) {
        throw ApiError('بيانات تسجيل الدخول خاطئة');
      } else
        throw e.error;
    }
  }

  Future<List<Post>> getAllPosts() async {
    var response = await dio.get(ApiConstants.postsEndPoint);
    var posts = List.from(response.data);
    return posts.map((post) => Post.fromJson(post)).toList();
  }

  Future<List<Course>> getAllCourses() async {
    var response = await dio.get(ApiConstants.coursesEndPoint);
    var courses = List.from(response.data);
    return courses.map((post) => Course.fromJson(post)).toList();
  }

  Future<List<Comment>> getAllComments(int postId) async {
    var response = await dio.get(ApiConstants.postCommentsEndPoint(postId));
    var comments = List.from(response.data);
    return comments.map((comment) => Comment.fromJson(comment)).toList();
  }

  Future<Comment> addComment({
    @required int userId,
    @required int postId,
    @required String text,
  }) async {
    var response = await dio.post(
      ApiConstants.postCommentsEndPoint(postId),
      data: {'author': userId, 'post_id': postId, 'text': text},
    );
    print(Get.find<AuthController>().token);
    return Comment.fromJson(response.data);
  }

  Future<User> getAuthenticatedUser() async {
    var res = await dio.get(ApiConstants.userEndPoint);
    return User.fromJson(res.data);
  }

  Future<void> deleteComment(int postId, int commentId) async {
    await dio.delete(ApiConstants.commentEndPoint(postId, commentId));
  }

  Future<Comment> updateComment(
    int postId,
    int commentId,
    String newText,
  ) async {
    var res = await dio.patch(
      ApiConstants.commentEndPoint(postId, commentId),
      data: {
        'author': Get.find<AuthController>().authenticatedUser.pk,
        'post_id': postId,
        'text': newText,
      },
    );
    return Comment.fromJson(res.data);
  }

  Future<Post> addPost({
    @required String body,
    List<String> tags,
  }) async {
    var response = await dio.post(
      ApiConstants.postsEndPoint,
      data: {
        'body': body,
        'tags': tags,
      },
    );
    // FIXME delete this after when API handles the response corrctly
    response.data['author_name'] =
        Get.find<AuthController>().authenticatedUser.name;
    response.data['author'] = Get.find<AuthController>().authenticatedUser.pk;
    return Post.fromJson(response.data);
  }

  Future<void> deletePost(int id) async {
    await dio.delete(ApiConstants.postEndPoint(id));
  }

  Future<Post> editPost(
    int postId,
    String body,
    List<String> tags,
  ) async {
    var response = await dio.patch(
      ApiConstants.postEndPoint(postId),
      data: {
        'body': body,
        'tags': tags,
      },
    );
    response.data['author_name'] =
        Get.find<AuthController>().authenticatedUser.name;
    response.data['author'] = Get.find<AuthController>().authenticatedUser.pk;
    return Post.fromJson(response.data);
  }
}
