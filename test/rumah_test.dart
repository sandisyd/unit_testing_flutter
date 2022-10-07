import 'package:flutter_test/flutter_test.dart';

import 'package:belajar_unit_testing_flutter/rumah.dart';

import 'package:mockito/mockito.dart';

class MockRumah extends Mock implements Rumah {}

void main() {
  group("Test rumah", () {
    MockRumah rumah = MockRumah();
    test("Test rest dan komplek", () {
      print("Testing");
      rumah.rest();
      rumah.komplek();
      verifyInOrder([rumah.rest(), rumah.komplek()]);
    });

    test("Test jenis rumah", () {
      print("Testingggg");

      expect(rumah.jenisRumah, isNull);
    });

    test("Test when then return", () {
      print("Testing....");

      when(rumah.jenisRumah).thenReturn("Komplek");
      expect(rumah.jenisRumah, equals("Komplek"));
    });

    test("Test then trow", () {
      print("Testinggg");

      when(rumah.rest()).thenThrow(Exception("Rumah belum jadi"));
      expect(() => rumah.rest(), throwsException);
    });

    test("Test Then Anwer", () async {
      print("Testingg");

      when(rumah.komplek()).thenAnswer((_) => Future.value(true));
      bool? resul = await rumah.komplek();

      expect(resul, equals(true));
    });
  });
  setUp(() {
    print("Setup");
  });
  tearDown(() {
    print("Tear down");
  });
}
