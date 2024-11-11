import 'dart:convert';

import 'package:appwrouter/appwrouter.dart';
import 'package:dart_appwrite/dart_appwrite.dart';

Future<dynamic> indexHandler(HandleRequest handler) async {
  final HandleRequest(
    :res,
    :error,
    :log,
  ) = handler;
  try {
    log("Hi Appwriters, this is a log message");
    return res.text(
        jsonEncode({
          "message": "Hello from Appwrouter!",
        }),
        201,
        {
          "content-type": "application/json",
        });
  } catch (e) {
    error(e.toString());
    if (e is AppwriteException) {
      return res.text(
          jsonEncode({
            "message": e.message,
          }),
          500,
          {
            "content-type": "application/json",
          });
    } else {
      return res.text(
          jsonEncode({
            "message": "Internal Server Error",
          }),
          500,
          {
            "content-type": "application/json",
          });
    }
  }
}
