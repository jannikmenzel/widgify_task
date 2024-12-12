void printWhenMensa(student1, student2, day) {
  // Ausgabe des Tagesnamens in lesbarer Form
  print('Freistunden für Mensa am ${day.toString().split('.').last}:');
  // Prüfen, ob es Freistunden gibt
  bool same = false;
  // Spezifiziert die Daten, die aus der Map benutzt werden sollen für Student1
  var events1 = student1[day];
  // Spezifiziert die Daten, die aus der Map benutzt werden sollen für Student2
  var events2 = student2[day];
  // Iteriert über die Stundenpläne der beiden Studenten für den Tag
  for (int i = 0; i < events1.length; i++) {
    // Prüft, ob beide Studenten in der aktuellen Stunde frei haben
    if (events1[i].isEmpty && events2[i].isEmpty) {
      // Ausgabe der freien Stunde
      print('--> Beide haben in der ${i + 1}.DS eine Freistunde.');
      // Markiert, dass mindestens eine Freistunde gefunden wurde
      same = true;
    }
  }
  // Falls es keine gemeinsame Freistunden gibt wird dies ausgegeben
  if (!same) print('Es gibt keine gemeinsamen Freistunden am $day.' + "\n");
}

