class StatementDto {
  final String toFromName;
  final double value;
  final DateTime date;
  final String status;
  final String type;

  StatementDto(
      {required this.toFromName,
      required this.value,
      required this.date,
      required this.status,
      required this.type});
}
