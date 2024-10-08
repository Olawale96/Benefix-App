// ignore_for_file: annotate_overrides, overridden_fields

class APIErrorException implements Exception {
  final String message;

  APIErrorException(this.message);

  @override
  String toString() => message;
}
