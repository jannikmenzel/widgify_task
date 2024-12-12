void printDaySchedule(student, day) {
  // Gibt die Überschrift mit Wochentag aus.
  print("Stundenplan für ${day.toString().split('.').last}:");
  // Tabellenkopf
  print("+" + "-" * 14 + "+" + "-" * 47 + "+");
  print("|      ${day.toString().split('.').last}" + "      |  Stundenplan " + " " * 33 + "|");
  print("+" + "-" * 14 + "+" + "-" * 47 + "+");
  // Spezifiziert die Daten, die aus der Map benutzt werden sollen
  var events = student[day];
  // Zählt die Stunden für die Anzahl der gegebenen Elemente hoch
  for (int i = 0; i < events.length; i++) {
    // Gibt Freistunde aus falls in dem Element kein Inhalt vorhanden ist
    String event = events[i].isEmpty ? "Freistunde" : events[i];
    // Gibt die jeweilige Übung oder Vorlesung aus der Map aus.
    print("| " + "DS ${i + 1}".padLeft(8).padRight(13) + "|  ${event.padRight(44)} |");
  }
  // Tabellenfuß
  print("+" + "-" * 14 + "+" + "-" * 47 + "+" + "\n");
}