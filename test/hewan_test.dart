import 'package:flutter_test/flutter_test.dart';

import 'package:belajar_unit_testing_flutter/hewan.dart';

void main() {
  group("Ini test untuk serangga", () {
    Hewan serangga = Hewan();

    test("Test jenis, warna dan umur", () {
      expect(serangga.jenis, equals("Semut"));
      expect(serangga.warna, equals("Hitam"));
      expect(serangga.maxUmur, equals(-10));
    });

    test("Test maksimal umur", () {
      serangga.maxUmur = -100;
      // expect(serangga.maxUmur, equals(100));
      expect(serangga.maxUmur, isPositive);
    });

    test("Test populasinya", () {
      expect(serangga.populasi, hasLength(equals(10)));
      // expect(serangga.populasi, equals(100));
    });
  });
}
