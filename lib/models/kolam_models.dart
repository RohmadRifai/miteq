class Kolam {
  String kolamjenisLobster;
  String masaBudidaya;
  double persentase;

  Kolam({
    required this.kolamjenisLobster,
    required this.masaBudidaya,
    required this.persentase,
  });
}

final List<Kolam> kolams = [
  Kolam(
    kolamjenisLobster: 'Red Claw Lobster',
    masaBudidaya: 'Des 01, 2019 - Des 31, 2019',
    persentase: 0.7,
  ),
  Kolam(
    kolamjenisLobster: 'Marron Lobster',
    masaBudidaya: 'Des 02, 2019 - Jan 01, 2020',
    persentase: 0.2,
  ),
  Kolam(
    kolamjenisLobster: 'Red Lobster',
    masaBudidaya: 'Des 03, 2019 - Jan 02, 2020',
    persentase: 0.4,
  ),
  Kolam(
    kolamjenisLobster: 'Red Claw Lobster',
    masaBudidaya: 'Des 04, 2019 - Jan 03, 2020',
    persentase: 0.9,
  ),
  Kolam(
    kolamjenisLobster: 'Marron Lobster',
    masaBudidaya: 'Des 05, 2019 - Jan 04, 2020',
    persentase: 0.4,
  ),
];
