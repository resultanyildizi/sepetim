import 'package:Sepetim/domain/auth/value_validators.dart';
import 'package:Sepetim/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('validateEmail', () {
    test('should return valid email when email is valid', () {
      const validEmail = 'deneme@gmail.com';

      final result = validateEmail(validEmail);

      expect(result, equals(right(validEmail)));
    });

    test('should return ValueFailure when email is invalid', () {
      const invalidEmail = 'deneme@gmailcom';

      final result = validateEmail(invalidEmail);

      expect(
          result,
          equals(left(
              const ValueFailure.invalidEmail(failedValue: invalidEmail))));
    });
  });

  group('validatePassword', () {
    test('should return valid password when password is strong enough', () {
      const strongPassword = 'Deneme123';

      final result = validatePassword(strongPassword);

      expect(result, equals(right(strongPassword)));
    });

    test('should return ValueFailure when password is weak', () {
      const weakPassword = 'deneme123';

      final result = validatePassword(weakPassword);

      expect(
          result,
          equals(left(
              const ValueFailure.weakPassword(failedValue: weakPassword))));
    });
  });
}
