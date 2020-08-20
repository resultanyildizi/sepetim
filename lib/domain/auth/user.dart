import 'package:Sepetim/domain/auth/sign_in_type.dart';
import 'package:Sepetim/domain/auth/value_objects.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
    @required SignInType signInType,
    @required Option<String> emailOption,
  }) = _User;
}
