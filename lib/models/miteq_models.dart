class Miteqs {
  String namaMiteq;
  int ppm;
  int ph;
  int suhuAir;
  String kualitasAir;

  Miteqs(
      {required this.namaMiteq,
      required this.ppm,
      required this.ph,
      required this.suhuAir,
      required this.kualitasAir});
}

final List<Miteqs> miteqs = [
  Miteqs(
    namaMiteq: 'Miteq 1',
    ppm: 200,
    ph: 6,
    suhuAir: 30,
    kualitasAir: 'Bagus',
  ),
  Miteqs(
    namaMiteq: 'Miteq 2',
    ppm: 300,
    ph: 8,
    suhuAir: 40,
    kualitasAir: 'Jelek',
  ),
  Miteqs(
    namaMiteq: 'Miteq 3',
    ppm: 190,
    ph: 6,
    suhuAir: 29,
    kualitasAir: 'Bagus',
  ),
  Miteqs(
    namaMiteq: 'Miteq 4',
    ppm: 290,
    ph: 9,
    suhuAir: 39,
    kualitasAir: 'Jelek',
  ),
  Miteqs(
    namaMiteq: 'Miteq 5',
    ppm: 210,
    ph: 6,
    suhuAir: 32,
    kualitasAir: 'Bagus',
  ),
];
