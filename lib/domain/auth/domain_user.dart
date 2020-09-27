import 'package:Sepetim/domain/auth/sign_in_type.dart';
import 'package:Sepetim/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'domain_user.freezed.dart';

@freezed
abstract class DomainUser with _$DomainUser {
  const factory DomainUser({
    @required UniqueId id,
    @required SignInType signInType,
    @required Option<String> emailOption,
  }) = _DomainUser;
}
