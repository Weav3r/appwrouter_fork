// ignore_for_file: avoid_dynamic_calls

/// {@template appwrouter_response}
/// A class that represents the response object.
/// {@endtemplate}
class AppwrouterResponse {
  /// {@macro appwrouter_response}
  AppwrouterResponse({
    required this.empty,
    required this.json,
    required this.redirect,
    required this.text,
    required this.binary,
  });

  /// Parsing the Response from Appwrite,
  factory AppwrouterResponse.parse(dynamic res) {
    return AppwrouterResponse(
      empty: res.empty,
      json: res.json,
      redirect: res.redirect,
      text: res.text,
      binary: res.binary,
    );
  }

  /// The empty response.
  final dynamic empty;

  /// The json response.
  final dynamic json;

  /// The redirect response.
  final dynamic redirect;

  /// The text response.
  final dynamic text;

  /// The binary response.
  final dynamic binary;

  /// Copy with
  AppwrouterResponse copyWith({
    dynamic empty,
    dynamic json,
    dynamic redirect,
    dynamic text,
    dynamic binary,
  }) {
    return AppwrouterResponse(
      empty: empty ?? this.empty,
      json: json ?? this.json,
      redirect: redirect ?? this.redirect,
      text: text ?? this.text,
      binary: binary ?? this.binary,
    );
  }
}
