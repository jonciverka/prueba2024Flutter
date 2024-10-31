class Utilities {
  dateTimeToStringDiferencia(DateTime datetime) {
    DateTime now = DateTime.now();

    Duration difference = now.difference(datetime);
    if (difference.inHours >= 24) {
      int days = difference.inDays;
      return "Publicado hace $days días";
    } else {
      int hours = difference.inHours;
      return "Publicado hace $hours horas";
    }
  }
}
