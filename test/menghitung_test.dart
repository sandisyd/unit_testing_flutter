import 'package:flutter_test/flutter_test.dart';
import 'package:belajar_unit_testing_flutter/menghitung.dart';

void main() {
  test("Berhitung berhasil", () {
    Menghitung berhitung = Menghitung();

    final hasil = berhitung.kali(5, 2);

    expect(hasil, equals(10));
  });
}
