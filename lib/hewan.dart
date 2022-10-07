class Hewan {
  String? jenis;
  String? warna;
  int? _maxUmur;
  List<int>? populasi;

  int get maxUmur => _maxUmur!;
  set maxUmur(int value) {
    if (value < 100) {
      value *= -1;
    }
    _maxUmur = value;
  }

  Hewan() {
    jenis = "Semut";
    warna = "Hitam";
    maxUmur = 10;
    populasi = [];
    for (int i = 0; i < 10; i += 1) {
      populasi!.add(100);
    }
  }
}
