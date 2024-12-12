void printDaySchedule(student, day) {
  print("Stundenplan für ${day.toString().split('.').last}:"); // Gibt die Überschrift mit Wochentag aus.
  var events = student[day]; // Spezifiziert die Daten die aus der Map benutzt werden sollen
  for (int i = 0; i < events.length; i++) { // Zählt die Stunden für die Anzahl der gegebenen Elemente hoch
    String event = events[i].isEmpty ? "Freistunde" : events[i]; // Gibt Freistunde aus falls in dem Element kein Inhalt vorhanden ist
    print("Doppelstunde ${i + 1}: $event"); // Gibt die jeweilige Übung oder Vorlesung aus der Map aus.
  }
}