class HttpModel {
  final int statusCode;
  final String body;
  final String message;

  HttpModel({
    required this.statusCode,
    required this.body,
    required this.message,
  });

  @override
  String toString() =>
      '''HttpModel(statusCode: $statusCode, body: $body, message: $message)''';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HttpModel &&
        other.statusCode == statusCode &&
        other.body == body &&
        other.message == message;
  }

  @override
  int get hashCode => statusCode.hashCode ^ body.hashCode ^ message.hashCode;
}
