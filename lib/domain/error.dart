class Error {
  String errorMsg;
  Error({required this.errorMsg});
}

class serverError extends Error {
  serverError({required super.errorMsg});
}

class networkError extends Error {
  networkError({required super.errorMsg});
}
