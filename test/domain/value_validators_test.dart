import 'package:Sepetim/domain/auth/value_validators.dart';
import 'package:Sepetim/domain/core/failures.dart';
import 'package:Sepetim/domain/core/value_validators.dart';
import 'package:Sepetim/domain/item/value_validators.dart';
import 'package:Sepetim/domain/link_object/value_validators.dart';
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

    test('should return ValueFailure when password doesnt have numbers', () {
      const weakPassword = 'deneme';

      final result = validatePassword(weakPassword);

      expect(
          result,
          equals(left(
              const ValueFailure.weakPassword(failedValue: weakPassword))));
    });

    test('should return ValueFailure when password less than 6 characters', () {
      const weakPassword = 'Dene1';

      final result = validatePassword(weakPassword);

      expect(
          result,
          equals(left(
              const ValueFailure.weakPassword(failedValue: weakPassword))));
    });

    test(
        'should return ValueFailure when password doesnt have upper case letters',
        () {
      const weakPassword = 'deneme12';

      final result = validatePassword(weakPassword);

      expect(
          result,
          equals(left(
              const ValueFailure.weakPassword(failedValue: weakPassword))));
    });

    test('should return ValueFailure when password has more than 32 characters',
        () {
      const weakPassword = 'Deneme1212121212121212121212121212';

      final result = validatePassword(weakPassword);

      expect(
          result,
          equals(left(
              const ValueFailure.weakPassword(failedValue: weakPassword))));
    });
  });

  group('validateImageFile', () {
    test('should return valid file object when image path deneme.jpg', () {
      const validImageFile = 'deneme.jpeg';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test('should return valid file object when image path deneme.jpeg', () {
      const validImageFile = 'deneme.jpeg';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test('should return valid file object when image path deneme.png', () {
      const validImageFile = 'deneme.png';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test('should return valid file object when image path deneme.bmp', () {
      const validImageFile = 'deneme.bmp';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test(
        'should return valid file object when image path is firebase reference',
        () {
      const validImageFile =
          'gs://sepetim-e2723.appspot.com/app_images/default.png';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test('should return valid file object when image path deneme.JPG', () {
      const validImageFile = 'deneme.jpeg';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test('should return valid file object when image path deneme.JPEG', () {
      const validImageFile = 'deneme.jpeg';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test('should return valid file object when image path deneme.PNG', () {
      const validImageFile = 'deneme.png';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test('should return valid file object when image path deneme.BMP', () {
      const validImageFile = 'files/deneme.bmp';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test('should return valid file object when image path deneme.TIFF', () {
      const validImageFile = 'files\\deneme.tiff';

      final result = validateImageFile(validImageFile);

      expect(result, equals(right(validImageFile)));
    });

    test('should return value failure when image path doesn\'t include dot',
        () {
      const invalidImageFile = 'files\\denemejpg';

      final result = validateImageFile(invalidImageFile);

      expect(
          result,
          equals(left(const ValueFailure.invalidImagePath(
              failedValue: invalidImageFile))));
    });

    test('should return value failure when image path doesn\'t include name',
        () {
      const invalidImageFile = '.jpg';

      final result = validateImageFile(invalidImageFile);

      expect(
          result,
          equals(left(const ValueFailure.invalidImagePath(
              failedValue: invalidImageFile))));
    });

    test('should return value failure when image path is empty', () {
      const invalidImageFile = '';

      final result = validateImageFile(invalidImageFile);

      expect(
          result,
          equals(left(const ValueFailure.invalidImagePath(
              failedValue: invalidImageFile))));
    });

    test('should return value failure when image extension is wrong', () {
      const invalidImageFile = 'deneme.txt';

      final result = validateImageFile(invalidImageFile);

      expect(
          result,
          equals(left(const ValueFailure.invalidImagePath(
              failedValue: invalidImageFile))));
    });
  });

  group('validateUrl', () {
    test('should return valid link', () {
      const validLink = 'https://www.google.com';

      final result = validateLink(validLink);

      expect(result, equals(right(validLink)));
    });

    test('should return valid link', () {
      const validLink = 'http://www.google.com';

      final result = validateLink(validLink);

      expect(result, equals(right(validLink)));
    });

    test('should return valid link', () {
      const validLink =
          'https://www.google.com/search?hl=tr&tbm=shop&sxsrf=ALeKk02ew9DPmPhKF0DO4dy4TDDdLfpSUg%3A1593448624997&ei=sBj6Xo-1PMy56QTvgqmoCA&q=ayakkab%C4%B1&oq=ayakkab%C4%B1&gs_lcp=Cgtwcm9kdWN0cy1jYxADMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADICCAAyAggAMgIIADoECCMQJzoGCAAQChAYOgQIABAKUIANWLEaYOUcaABwAHgAgAGDAYgBxgmSAQQwLjEwmAEAoAEBqgEPcHJvZHVjdHMtY2Mtd2l6&sclient=products-cc&ved=0ahUKEwiPzYrauqfqAhXMXJoKHW9BCoUQ4dUDCAo&uact=5#spd=9929812441728534072';

      final result = validateLink(validLink);

      expect(result, equals(right(validLink)));
    });

    test('should return valueFailure when link is invalid', () {
      const invalidLink = 'sadfasdfasd';

      final result = validateLink(invalidLink);

      expect(
          result,
          equals(
              left(const ValueFailure.invalidUrl(failedValue: invalidLink))));
    });

    test('should return valueFailure when link is invalid', () {
      const invalidLink = 'htt://www.google.com';

      final result = validateLink(invalidLink);

      expect(
          result,
          equals(
              left(const ValueFailure.invalidUrl(failedValue: invalidLink))));
    });

    test('should return valueFailure when link is invalid', () {
      const invalidLink = '://www.google.com';

      final result = validateLink(invalidLink);

      expect(
          result,
          equals(
              left(const ValueFailure.invalidUrl(failedValue: invalidLink))));
    });
  });
}
