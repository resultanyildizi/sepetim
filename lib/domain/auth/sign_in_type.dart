import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_type.freezed.dart';

@freezed
abstract class SignInType with _$SignInType {
  const factory SignInType.signedInWithGoogle() = SignedInWithGoogle;
  const factory SignInType.signedInWithEmailAndPassword() =
      SignedInWithEmailAndPassword;
  const factory SignInType.signedInAnonymously() = SignedInAnonymously;
  const factory SignInType.unknownSignInType() = UnknownSignType;
}
