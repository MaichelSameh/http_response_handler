import 'dart:convert';

import 'package:http_response_handler/src/models/http_model.dart';

class HttpResponse {
  static HttpModel beautifyJsonResponse({
    required String message,
    required int statusCode,
    required dynamic body,
  }) {
    if (body is List || body is Set) {
      return HttpModel(
        statusCode: statusCode,
        body: json.encode({
          'results': body,
          'status': statusCode,
          'message': message,
        }),
        message: message,
      );
    }

    return HttpModel(
      statusCode: statusCode,
      body: json.encode({
        'result': body,
        'status': statusCode,
        'message': message,
      }),
      message: message,
    );
  }
}
