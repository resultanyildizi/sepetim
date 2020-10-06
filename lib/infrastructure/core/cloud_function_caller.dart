import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

Future<dynamic> callCloudFunction({
  @required String functionName,
  @required Map<String, String> data,
}) async {
  final function =
      CloudFunctions.instance.getHttpsCallable(functionName: functionName);

  final result = await function.call(data);

  if (result != null && result.data != null) {
    if (result.data["type"] == "error") {
      throw PlatformException(
          code: result.data["code"].toString(),
          message:
              "Error occured when cloud function was running. Error was: ${result.data["message"].toString()}");
    } else if (result.data["type"] == "success") {
      return result.data;
    }
  } else {
    throw PlatformException(
        code: "ERROR_FUNCTION_RETURNED_NULL",
        message: "Cloud function returned null result");
  }
}
